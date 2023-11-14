import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({Key? key}) : super(key: key);

  @override
  _GoalsPageState createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 60),
                ),
                // Gambar dengan border di atas dan bawah
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 2.0, color: primaryButtonColor),
                      bottom: BorderSide(width: 2.0, color: primaryButtonColor),
                    ),
                  ),
                  child: Image.asset(
                    'lib/assets/images/Stretching exercises-pana.png',
                    width: double
                        .infinity, // Sesuaikan lebar gambar sesuai kebutuhan
                    fit: BoxFit.cover,
                  ),
                ),
                // Widget lainnya dapat ditambahkan di sini
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: primaryButtonColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Goals',
                    style: whiteTextStyle.copyWith(
                      fontSize: MediaQuery.of(context).size.width *
                          0.07, // Sesuaikan ukuran font sesuai kebutuhan
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
