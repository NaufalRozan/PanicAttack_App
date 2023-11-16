import 'package:flutter/material.dart';
import 'package:panicattack_app/pages/content_detail_page.dart'; // Sesuaikan dengan lokasi file ContentDetailPage
import 'package:panicattack_app/pages/home_page.dart'; // Sesuaikan dengan lokasi file HomePage
import 'package:panicattack_app/utils/goal_util.dart';

class NavigationUtil {
  static void moveToNextContent(
    BuildContext context,
    DayContent currentContent,
    List<DayContent> contentList,
  ) {
    // Temukan indeks dari konten saat ini di dalam daftar konten
    int currentIndex = contentList.indexOf(currentContent);

    // Pindah ke konten selanjutnya jika masih ada
    if (currentIndex < contentList.length - 1) {
      DayContent nextContent = contentList[currentIndex + 1];
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ContentDetailPage(content: nextContent, contentList: contentList),
        ),
      );
    } else {
      // Ini berarti kita sudah mencapai konten terakhir
      // Lakukan sesuatu di sini, seperti menampilkan pesan akhir latihan
      // atau kembali ke halaman awal
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(), // Gantilah dengan halaman yang sesuai
        ),
      );
    }
  }
}
