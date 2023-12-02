import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/utils/goal_util.dart';

class ContentDetailPage extends StatefulWidget {
  final DayContent content;
  final List<DayContent> contentList;

  ContentDetailPage({required this.content, required this.contentList});

  @override
  _ContentDetailPageState createState() => _ContentDetailPageState();
}

class _ContentDetailPageState extends State<ContentDetailPage> {
  bool timerStarted = false;
  @override
  void dispose() {
    // Batalkan timer atau hentikan listener animasi di sini
    // Contoh: timer.cancel();
    super.dispose();
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
                  fontSize: MediaQuery.of(context).size.width * 0.09,
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
                            fontSize: MediaQuery.of(context).size.width * 0.09,
                            fontWeight: bold,
                          ),
                        );
                      }
                      return Text(
                        '${time.min ?? 0}:${time.sec ?? 0}',
                        style: textStyle.copyWith(
                          fontSize: MediaQuery.of(context).size.width * 0.09,
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

      // Ubah penyimpanan status konten yang selesai menggunakan ID konten
      await userDoc.collection('completedContents').doc(content.id).set({
        'completed': true,
        'timestamp': FieldValue.serverTimestamp(),
      });

      return true; // Berhasil menandai konten sebagai selesai
    } catch (e) {
      print('Error marking content as completed: $e');
      return false; // Gagal menandai konten sebagai selesai
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
      // Bisa tambahkan logika lain jika diperlukan
    }
  }
}
