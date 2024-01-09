import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/pages/home_page.dart';

class FinishTestPage extends StatefulWidget {
  const FinishTestPage({ Key? key }) : super(key: key);

  @override
  _FinishTestPageState createState() => _FinishTestPageState();
}

class _FinishTestPageState extends State<FinishTestPage> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70, bottom: 70, left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
              'lib/assets/images/Good team-pana 1.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
              Text(
                "Selamat",
                style: whiteTextStyle.copyWith(
                    fontSize: MediaQuery.of(context).size.width * 0.08,
                    fontWeight: bold),
                textAlign: TextAlign.center,
              ),
              Text(
                "Anda Telah Menyelesaikan Seluruh Aktivitas Hari Ini",
                style: whiteTextStyle.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Lakukan aktifitas ini dalam kehidupan sehari hari, agar menjadi kebiasaan baik dalam hidup anda.',
                style: whiteTextStyle.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.045,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage()),
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