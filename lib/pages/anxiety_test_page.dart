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
      List.filled(13, null); // List untuk menyimpan jawaban setiap pertanyaan
  int totalScore = 0; // Skor total dari tes

  List<String> questions = [
    'Apakah anda merasakan perasaan Ansietas seperti cemas, perasaan buruk, takut akan pikiran sendiri, dan mudah teringgung?',
    'Apakah anda merasakan ketegangan seperti merasa tegang, lesu, tak bisa istirahat tenang, mudah terkejut, mudah menangis, gemetar, dan gelisah?',
    'Apakah Anda merasakan ketakutan seperti pada gelap, pada orang asing, ditinggal sendiri, pada kerumunan orang banyak dan lainnya?',
    'Apakah Anda merasakan gangguan tidur seperti susah tidur, terbangun malam hari, tidak nyenyak, bangun dengan lesu, banyak mimpi-mimpi, mimpi buruk, dan mimpi menakutkan?',
    'Apakah Anda merasakan gangguan kecerdasan seperti susah berkonsentrasi, dan daya ingat buruk?',
    'Apakah Anda merasakan perasaan depresi seperti hilangnya minat, berkurangnya kesenangan pada hobi, sedih, bangun dini hari, dan perasaan berubah-ubah sepanjang hari?',
    'Apakah Anda merasakan gejala somatik (otot) seperti sakit atau nyeri otot, kaku, kedutan otot, gigi gemerutuk, dan suara tidak stabil?',
    'Apakah Anda merasakan gejala somatik (sensorik) seperti tinitus, penglihatan kabur, muka merah atau pucat, merasa lemah, dan perasaan di tusuk-tusuk?',
    'Apakah Anda merasakan gejala kadiovaskuler seperti seperti berdebar, nyeri di dada, denyut nadi mengeras, dan perasaan lesu atau lemas seperti akan pingsan?',
    'Apakah Anda merasakan gejala respirator seperti merasa tertekan atau sempit di dada, merasa tercekik, sering menarik napas, dan napas pendek atau sesak?',
    'Apakah Anda merasakan gejala pencernaan seperti sulit menelan, perut melilit, gangguan pencernaan, nyer sebelum dan sesudah makan, mual, dan lainnya?',
    'Apakah Anda merasakan gejala urogenital seperti sering buang air kecil, tidak dapat menahan air seni, tidak menstruasi pada perempuan, ereksi hilang, dan lainnya?',
    'Apakah Anda merasakan gejala otonom seperti mulut kering, muka merah, mudah berkeringat, pusing, dan sakit kepala?',
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
                title: Text('Jarang', style: textStyle.copyWith(fontSize: 20)),
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
                title: Text('Kadang-kadang',
                    style: textStyle.copyWith(fontSize: 20)),
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
            Container(
              decoration: BoxDecoration(
                color: whiteColor,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: RadioListTile(
                title: Text('Sering', style: textStyle.copyWith(fontSize: 20)),
                value: 3,
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
                title: Text('Selalu', style: textStyle.copyWith(fontSize: 20)),
                value: 4,
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
                          // Panggil fungsi untuk menghapus konten saat kembali
                          onTestCompleted();
                        }
                      : null, // Set null jika di soal nomor 1
                  style: ElevatedButton.styleFrom(
                    primary:
                        Colors.white, // Sesuaikan dengan warna yang diinginkan
                  ),
                  child: Text(
                    'Kembali',
                    style: textStyle,
                  ),
                ),

                // Tombol Lanjut atau Hitung Skor
                ElevatedButton(
                  onPressed: () {
                    if (currentQuestion < 12) {
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
                      // Panggil fungsi untuk menghapus konten setelah tes selesai
                      onTestCompleted();
                      // Panggil fungsi untuk mengupdate progress menjadi 0%
                      updateProgress(anxietyLevel: anxietyLevel);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: Text(
                    currentQuestion < 12 ? 'Lanjut' : 'Hitung Skor',
                    style: textStyle,
                  ),
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
    if (score >= 0 && score <= 16) {
      return 'Anxiety Level Low';
    } else if (score >= 17 && score <= 34) {
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

void onTestCompleted() async {
  await deleteAllCompletedContents();
}

Future<void> deleteAllCompletedContents() async {
  try {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      final userDoc =
          FirebaseFirestore.instance.collection('users').doc(currentUser.uid);

      // Hapus seluruh dokumen dalam koleksi 'completedContents'
      final completedContentsCollection =
          userDoc.collection('completedContents');
      final completedContents = await completedContentsCollection.get();
      for (var doc in completedContents.docs) {
        await completedContentsCollection.doc(doc.id).delete();
      }

      print('Seluruh konten selesai dihapus.');
    } else {
      print('Tidak ada pengguna saat ini. Gagal menghapus konten.');
    }
  } catch (e) {
    print('Error deleting completed contents: $e');
  }
}

void updateProgress({required String anxietyLevel}) async {
  try {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      final userDoc =
          FirebaseFirestore.instance.collection('users').doc(currentUser.uid);

      // Set progress ke 0
      await userDoc.update({'progress': 0.0});

      print('Progress diatur menjadi 0% untuk anxiety level: $anxietyLevel');
    } else {
      print('Tidak ada pengguna saat ini. Gagal mengupdate progress.');
    }
  } catch (e) {
    print('Error updating progress: $e');
  }
}

void main() {
  runApp(MaterialApp(
    home: AnxietyTestPage(),
  ));
}
