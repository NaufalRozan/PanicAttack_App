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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
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
                            top: BorderSide(
                                width: 2.0, color: primaryButtonColor),
                            bottom: BorderSide(
                                width: 2.0, color: primaryButtonColor),
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
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: primaryButtonColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Day 1',
                      style: whiteTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: MediaQuery.of(context).size.width * 0.1),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: primaryButtonColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Day 2',
                      style: whiteTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: MediaQuery.of(context).size.width * 0.1),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: primaryButtonColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Day 3',
                      style: whiteTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: MediaQuery.of(context).size.width * 0.1),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: primaryButtonColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Day 4',
                      style: whiteTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: MediaQuery.of(context).size.width * 0.1),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
