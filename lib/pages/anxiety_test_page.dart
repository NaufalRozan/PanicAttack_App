import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/pages/high_anxiety_result_page.dart';
import 'package:panicattack_app/pages/low_anxiety_result_page.dart';
import 'package:panicattack_app/pages/mid_anxiety_result_page.dart';

class AnxietyTestPage extends StatefulWidget {
  @override
  _AnxietyTestPageState createState() => _AnxietyTestPageState();
}

class _AnxietyTestPageState extends State<AnxietyTestPage> {
  int currentQuestion = 0;
  List<int?> selectedValues =
      List.filled(10, null); // List untuk menyimpan jawaban setiap pertanyaan
  int totalScore = 0; // Skor total dari tes

  List<String> questions = [
    'Apakah Anda pernah mengalami serangan panik?',
    'Apakah serangan panik yang Anda alami terjadi secara tiba-tiba tanpa alasan yang jelas?',
    'Apakah Anda merasa takut atau cemas saat menghadapi situasi yang sebelumnya pernah memicu serangan panik?',
    'Apakah Anda merasa sulit untuk mengendalikan perasaan takut atau cemas saat mengalami serangan panik?',
    'Apakah Anda merasa kesulitan untuk berkomunikasi atau bersosialisasi dengan orang baru karena takut mengalami serangan panik?',
    'Apakah Anda merasa khawatir atau cemas secara berlebihan tanpa alasan yang jelas?',
    'Apakah Anda merasa kesulitan untuk berkonsentrasi atau sulit tidur karena kecemasan yang Anda alami?',
    'Apakah Anda merasa takut atau cemas saat berhadapan dengan objek atau situasi tertentu?',
    'Apakah Anda pernah mengalami peristiwa traumatis yang menyebabkan Anda mengalami kecemasan berlebihan?',
    'Apakah Anda merasa kesulitan untuk mengendalikan perasaan takut atau cemas yang Anda alami?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryButtonColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Jumlah Pertanyaan
            Text(
              '${currentQuestion + 1}/${questions.length}',
              style: whiteTextStyle.copyWith(
                  fontSize: 20, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 10,
            ),
            // Pertanyaan
            Text(
              questions[currentQuestion],
              style: whiteTextStyle.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),

            // Pilihan Jawaban
            Container(
              decoration: BoxDecoration(
                color: whiteColor,
                border: Border.all(
                    color: Colors
                        .white), // Sesuaikan warna border sesuai kebutuhan
                borderRadius: BorderRadius.circular(
                    12), // Sesuaikan radius border sesuai kebutuhan
              ),
              child: RadioListTile(
                title: Text('Tidak sama sekali',
                    style: textStyle.copyWith(fontSize: 20)),
                value: 0,
                groupValue: selectedValues[currentQuestion],
                onChanged: (value) {
                  setState(() {
                    selectedValues[currentQuestion] = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: whiteColor,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: RadioListTile(
                title: Text('Kadang-kadang',
                    style: textStyle.copyWith(fontSize: 20)),
                value: 1,
                groupValue: selectedValues[currentQuestion],
                onChanged: (value) {
                  setState(() {
                    selectedValues[currentQuestion] = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: whiteColor,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: RadioListTile(
                title: Text('Sering', style: textStyle.copyWith(fontSize: 20)),
                value: 2,
                groupValue: selectedValues[currentQuestion],
                onChanged: (value) {
                  setState(() {
                    selectedValues[currentQuestion] = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // Tombol Lanjut atau Hitung Skor
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tombol Kembali
                ElevatedButton(
                  onPressed: currentQuestion > 0
                      ? () {
                          setState(() {
                            currentQuestion--;
                          });
                        }
                      : null, // Set null jika di soal nomor 1
                  style: ElevatedButton.styleFrom(
                    primary:
                        Colors.white, // Sesuaikan dengan warna yang diinginkan
                  ),
                  child: Text('Kembali',
                  style: textStyle,),
                ),

// Tombol Lanjut atau Hitung Skor
                ElevatedButton(
                  onPressed: () {
                    if (currentQuestion < 9) {
                      setState(() {
                        currentQuestion++;
                      });
                    } else {
                      for (int? value in selectedValues) {
                        if (value != null) {
                          totalScore += value;
                        }
                      }
                      String anxietyLevel = determineAnxietyLevel(totalScore);
                      saveScoreToFirestore(totalScore, anxietyLevel);
                      moveToResultPage(anxietyLevel);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                        Colors.white, // Sesuaikan dengan warna yang diinginkan
                  ),
                  child: Text(currentQuestion < 9 ? 'Lanjut' : 'Hitung Skor',
                  style: textStyle,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void saveScoreToFirestore(int score, String anxietyLevel) async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      final userDoc =
          FirebaseFirestore.instance.collection('users').doc(currentUser.uid);

      await userDoc.set(
        {
          'anxietyScore': score,
          'anxietyLevel': anxietyLevel,
        },
        SetOptions(merge: true), // Menggabungkan data ke dokumen yang sudah ada
      );

      print('Skor dan level kecemasan disimpan di Firestore.');
    } else {
      print('Tidak ada pengguna saat ini. Gagal menyimpan skor ke Firestore.');
    }
  }

  String determineAnxietyLevel(int score) {
    if (score >= 0 && score <= 6) {
      return 'Anxiety Level Low';
    } else if (score >= 7 && score <= 13) {
      return 'Anxiety Level Mid';
    } else {
      return 'Anxiety Level High';
    }
  }

  void moveToResultPage(String anxietyLevel) {
    switch (anxietyLevel) {
      case 'Anxiety Level Low':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LowAnxietyResultPage()),
        );
        break;
      case 'Anxiety Level Mid':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MidAnxietyResultPage()),
        );
        break;
      case 'Anxiety Level High':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HighAnxietyResultPage()),
        );
        break;
      default:
      // Handle error or default case
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: AnxietyTestPage(),
  ));
}
