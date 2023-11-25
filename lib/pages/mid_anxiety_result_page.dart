import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/core.dart';

class MidAnxietyResultPage extends StatefulWidget {
  const MidAnxietyResultPage({Key? key}) : super(key: key);

  @override
  _MidAnxietyResultPageState createState() => _MidAnxietyResultPageState();
}

class _MidAnxietyResultPageState extends State<MidAnxietyResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 70, bottom: 70, left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hasil Tes\nGejala Kecemasan",
                style: textStyle.copyWith(
                    fontSize: MediaQuery.of(context).size.width * 0.07,
                    fontWeight: bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: cardYellow,
                    width: 3,
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: cardYellow.withOpacity(0.6),
                  radius: MediaQuery.of(context).size.height * 0.12,
                  backgroundImage:
                      AssetImage('lib/assets/images/Worried-amico.png'),
                ),
              ),
              Text(
                "Tingkat Kecemasan Sedang",
                style: textStyle.copyWith(
                    fontSize: MediaQuery.of(context).size.width * 0.07,
                    fontWeight: bold),
                textAlign: TextAlign.center,
              ),
              Text(
                "Gejala pada tingkat menengah mungkin lebih mengganggu dan mempengaruhi aktivitas sehari-hari dengan lebih signifikan. Perlu dilakukan langkah-langkah lebih intensif untuk mengatasi rasa cemas.",
                style: textStyle.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.045,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: primaryButtonColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Text(
                      'Kembali ke halaman utama',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
