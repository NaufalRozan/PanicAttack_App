import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    'Pertanyaan 1: Apakah Anda pernah mengalami serangan panik?',
    'Pertanyaan 2: Apakah serangan panik yang Anda alami terjadi secara tiba-tiba tanpa alasan yang jelas?',
    'Pertanyaan 3: Apakah Anda merasa takut atau cemas saat menghadapi situasi yang sebelumnya pernah memicu serangan panik?',
    'Pertanyaan 4: Apakah Anda merasa sulit untuk mengendalikan perasaan takut atau cemas saat mengalami serangan panik?',
    'Pertanyaan 5: Apakah Anda merasa kesulitan untuk berkomunikasi atau bersosialisasi dengan orang baru karena takut mengalami serangan panik?',
    'Pertanyaan 6: Apakah Anda merasa khawatir atau cemas secara berlebihan tanpa alasan yang jelas?',
    'Pertanyaan 7: Apakah Anda merasa kesulitan untuk berkonsentrasi atau sulit tidur karena kecemasan yang Anda alami?',
    'Pertanyaan 8: Apakah Anda merasa takut atau cemas saat berhadapan dengan objek atau situasi tertentu?',
    'Pertanyaan 9: Apakah Anda pernah mengalami peristiwa traumatis yang menyebabkan Anda mengalami kecemasan berlebihan?',
    'Pertanyaan 10: Apakah Anda merasa kesulitan untuk mengendalikan perasaan takut atau cemas yang Anda alami?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tes Kecemasan'),
      ),
      body: Column(
        children: [
          // Pertanyaan
          Text(
            questions[currentQuestion],
            style: TextStyle(fontSize: 20),
          ),

          // Pilihan Jawaban
          RadioListTile(
            title: Text('Tidak sama sekali'),
            value: 0,
            groupValue: selectedValues[currentQuestion],
            onChanged: (value) {
              setState(() {
                selectedValues[currentQuestion] = value;
              });
            },
          ),
          RadioListTile(
            title: Text('Kadang-kadang'),
            value: 1,
            groupValue: selectedValues[currentQuestion],
            onChanged: (value) {
              setState(() {
                selectedValues[currentQuestion] = value;
              });
            },
          ),
          RadioListTile(
            title: Text('Sering'),
            value: 2,
            groupValue: selectedValues[currentQuestion],
            onChanged: (value) {
              setState(() {
                selectedValues[currentQuestion] = value;
              });
            },
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
            child: Text(currentQuestion < 9 ? 'Lanjut' : 'Hitung Skor'),
          ),
        ],
      ),
    );
  }

  void saveScoreToFirestore(int score, String anxietyLevel) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null) {
    final userDoc = FirebaseFirestore.instance.collection('users').doc(currentUser.uid);

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
