import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/utils/goal_util.dart';

class ContentDetailPage extends StatelessWidget {
  final DayContent content;

  ContentDetailPage({required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Menambahkan gambar ke dalam Column
            Image.asset(
              content.imagePath,
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
            Text(
              content.duration,
              style: textStyle.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.09,
                  fontWeight: bold),
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
}
