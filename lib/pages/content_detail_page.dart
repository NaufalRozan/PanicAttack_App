import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/pages/history_test_page.dart';
import 'package:panicattack_app/utils/goal_util.dart';

class ContentDetailPage extends StatefulWidget {
  final DayContent content;
  final List<DayContent> contentList;

  ContentDetailPage({required this.content, required this.contentList});

  @override
  _ContentDetailPageState createState() => _ContentDetailPageState();
}

class _ContentDetailPageState extends State<ContentDetailPage> {
  String _anxietyLevel = ''; // Add this line to define the variable
  bool timerStarted = false;
  @override
  void dispose() {
    super.dispose();
  }

  void initState() {
    super.initState();
    _getUserNameAndAnxietyLevelFromFirestore();
  }

  Future<void> _getUserNameAndAnxietyLevelFromFirestore() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    final userDoc = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: currentUser?.email)
        .get();
    if (userDoc.docs.isNotEmpty) {
      setState(() {
        _anxietyLevel = userDoc.docs[0].data()['anxietyLevel'] ??
            ''; // Inisialisasi dengan nilai default
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              widget.content.gifPath,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Text(
              widget.content.title,
              style: textStyle.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  fontWeight: bold),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  Text(
                    widget.content.description,
                    style: textStyle.copyWith(
                        fontSize: MediaQuery.of(context).size.width * 0.05),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            timerStarted
                ? CountdownTimer(
                    endTime: DateTime.now().millisecondsSinceEpoch +
                        widget.content.durasi.inMilliseconds,
                    widgetBuilder: (_, CurrentRemainingTime? time) {
                      if (time == null) {
                        return Text(
                          'Waktu Habis',
                          style: textStyle.copyWith(
                            fontSize: MediaQuery.of(context).size.width * 0.08,
                            fontWeight: bold,
                          ),
                        );
                      }
                      return Text(
                        '${time.min ?? 0}:${time.sec ?? 0}',
                        style: textStyle.copyWith(
                          fontSize: MediaQuery.of(context).size.width * 0.08,
                          fontWeight: bold,
                        ),
                      );
                    },
                    onEnd: () {
                      if (mounted) {
                        // Panggil fungsi untuk pindah ke konten selanjutnya
                        moveToNextContent(context);
                      }
                    },
                  )
                : ElevatedButton(
                    onPressed: () {
                      // Start the timer when the button is clicked
                      setState(() {
                        timerStarted = true;
                      });
                    },
                    child: Text('Start'),
                  ),
          ],
        ),
      ),
    );
  }

  Future<bool> markContentAsCompleted(DayContent content) async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser;
      final userDoc =
          FirebaseFirestore.instance.collection('users').doc(currentUser!.uid);

      // Periksa apakah sudah ada dokumen selesai dengan ID konten yang bersangkutan
      final completedContentDoc =
          userDoc.collection('completedContents').doc(content.id);
      final completedContent = await completedContentDoc.get();

      if (!completedContent.exists) {
        // Jika belum ada, tambahkan dokumen baru
        await completedContentDoc.set({
          'completed': true,
          'title': content.title,
          'duration' : content.duration,
          'image' : content.imagePath,
          'timestamp': FieldValue.serverTimestamp(),
        });
      } else {
        // Jika sudah ada, cukup perbarui timestamp (tidak membuat dokumen baru)
        await completedContentDoc.update({
          'timestamp': FieldValue.serverTimestamp(),
        });
      }

      // Perbarui kemajuan
      await this.updateProgress(anxietyLevel: this._anxietyLevel);

      return true; // Berhasil menandai konten sebagai selesai
    } catch (e) {
      print('Error marking content as completed: $e');
      return false; // Gagal menandai konten sebagai selesai
    }
  }

  Future<void> updateProgress({required String anxietyLevel}) async {
    try {
      print('anxietyLevel parameter: $anxietyLevel');
      final currentUser = FirebaseAuth.instance.currentUser;
      final userDoc =
          FirebaseFirestore.instance.collection('users').doc(currentUser!.uid);

      // Mendapatkan total konten yang harus diselesaikan oleh pengguna
      final totalContents = getDayContentTotal(anxietyLevel);

      print('Total Contents: $totalContents');

      // Mendapatkan total konten yang telah selesai oleh pengguna
      final completedContentsQuery = await userDoc
          .collection('completedContents')
          .where('completed', isEqualTo: true)
          .get();

      print('Completed Contents: ${completedContentsQuery.docs.length}');

      print('Dokumen yang Ditemukan: ${completedContentsQuery.docs.length}');

      for (var doc in completedContentsQuery.docs) {
        print('Dokumen: ${doc.data()}');
      }

      double progress;
      if (totalContents > 0) {
        progress = completedContentsQuery.size / totalContents.toDouble();
        print('Progress Terhitung: $progress');
      } else {
        progress = 0.0;
        print('Total Contents adalah 0, progress diatur menjadi 0.0');
      }

      // Mengatur nilai kemajuan
      await userDoc.update({'progress': progress});

      print(
          'Updating progress for anxiety level: $anxietyLevel, progress: $progress');
    } catch (e) {
      print('Error updating progress: $e');
    }
  }

  int getDayContentTotal(String anxietyLevel) {
    try {
      int total = 0;

      switch (anxietyLevel) {
        case 'Anxiety Level Low':
          total += getDay1Content(anxietyLevel).length;
          total += getDay2Content(anxietyLevel).length;
          total += getDay3Content(anxietyLevel).length;
          break;
        case 'Anxiety Level Mid':
          total += getDay1Content(anxietyLevel).length;
          total += getDay2Content(anxietyLevel).length;
          total += getDay3Content(anxietyLevel).length;
          total += getDay4Content(anxietyLevel).length;
          total += getDay5Content(anxietyLevel).length;
          break;
        case 'Anxiety Level High':
          total += getDay1Content(anxietyLevel).length;
          total += getDay2Content(anxietyLevel).length;
          total += getDay3Content(anxietyLevel).length;
          total += getDay4Content(anxietyLevel).length;
          total += getDay5Content(anxietyLevel).length;
          total += getDay6Content(anxietyLevel).length;
          total += getDay7Content(anxietyLevel).length;
          break;
        default:
          break;
      }

      print('Total Contents (anxietyLevel: $anxietyLevel): $total');
      return total;
    } catch (e) {
      print('Error in getDayContentTotal: $e');
      return 0;
    }
  }

  void moveToNextContent(BuildContext context) async {
    int currentIndex = widget.contentList.indexOf(widget.content);

    if (currentIndex < widget.contentList.length - 1) {
      DayContent nextContent = widget.contentList[currentIndex + 1];

      // Tandai konten saat ini sebagai selesai
      print('Sebelum markContentAsCompleted: ${widget.content.completed}');
      bool markedCompleted = await markContentAsCompleted(widget.content);
      print('Setelah markContentAsCompleted: ${widget.content.completed}');

      // Perbarui status konten pada _dayContent jika berhasil
      if (markedCompleted) {
        setState(() {
          widget.content.completed = true;
        });
      }

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ContentDetailPage(
            content: nextContent,
            contentList: widget.contentList,
          ),
        ),
      );
    } else {
      // Sudah mencapai konten terakhir di hari yang sama
      print('Sudah mencapai konten terakhir di hari yang sama');

      // Pindah ke HistoryTestPage jika waktu sudah habis
      if (widget.content.completed) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HistoryTestPage(),
          ),
        );
      } else {
        // Waktu di konten terakhir habis
        if (timerStarted) {
          // Mark konten terakhir sebagai selesai
          bool markedCompleted = await markContentAsCompleted(widget.content);

          // Perbarui status konten pada _dayContent jika berhasil
          if (markedCompleted) {
            setState(() {
              widget.content.completed = true;
            });
          }

          // Pindah ke HistoryPage
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HistoryTestPage(),
            ),
          );
        }
        // Bisa tambahkan logika lain jika diperlukan
      }
    }
  }
}
