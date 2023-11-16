import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/utils/goal_util.dart';
import 'package:panicattack_app/utils/navigation_util.dart';

class ContentDetailPage extends StatelessWidget {
  final DayContent content;
  final List<DayContent> contentList;

  ContentDetailPage({required this.content, required this.contentList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Menambahkan gambar ke dalam Column
            Image.asset(
              content.gifPath,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Text(
              content.title,
              style: textStyle.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.09,
                  fontWeight: bold),
              textAlign: TextAlign.center,
            ),
            Wrap(
              runSpacing: 10,
              spacing: 10,
              children: [
                Text(
                  content.description,
                  style: textStyle.copyWith(
                      fontSize: MediaQuery.of(context).size.width * 0.05),
                )
              ],
            ),
            CountdownTimer(
              endTime: DateTime.now().millisecondsSinceEpoch +
                  content.durasi.inMilliseconds,
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
                // Panggil fungsi untuk pindah ke konten selanjutnya
                moveToNextContent(context);
              },
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.skip_previous_outlined,
                      color: secondaryTextColor,
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Text(
                      ' Sebelumnya',
                      style: secondaryTextStyle.copyWith(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Selanjutnya',
                      style: secondaryTextStyle.copyWith(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                    Icon(
                      Icons.skip_next_outlined,
                      color: secondaryTextColor,
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void moveToNextContent(BuildContext context) {
    // Logika untuk pindah ke konten selanjutnya di hari yang sama
    // Ganti kode berikut sesuai dengan logika navigasi atau pengelolaan konten selanjutnya
    int currentIndex = contentList.indexOf(content);

    if (currentIndex < contentList.length - 1) {
      // Belum mencapai konten terakhir
      DayContent nextContent = contentList[currentIndex + 1];
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ContentDetailPage(
            content: nextContent,
            contentList: contentList,
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
