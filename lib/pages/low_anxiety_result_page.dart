import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/core.dart';

class LowAnxietyResultPage extends StatefulWidget {
  const LowAnxietyResultPage({Key? key}) : super(key: key);

  @override
  _LowAnxietyResultPageState createState() => _LowAnxietyResultPageState();
}

class _LowAnxietyResultPageState extends State<LowAnxietyResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70, bottom: 70, left: 30, right: 30),
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
                    color: primaryButtonColor,
                    width: 3,
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: primaryButtonColor.withOpacity(0.6),
                  radius: MediaQuery.of(context).size.height * 0.12,
                  backgroundImage:
                      AssetImage('lib/assets/images/Ellipse 3.png'),
                ),
              ),
              Text(
                "Tingkat Kecemasan Rendah",
                style: textStyle.copyWith(
                    fontSize: MediaQuery.of(context).size.width * 0.07,
                    fontWeight: bold),
                textAlign: TextAlign.center,
              ),
              Text(
                "Gejala panik pada tingkat rendah biasanya terasa lebih terkendali, namun tetap dapat mengganggu. Pada tingkat ini, fokus utamanya adalah meredakan gejala dan menciptakan perasaan tenang.",
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
