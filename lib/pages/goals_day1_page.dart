import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';

class GoalsDay1Page extends StatefulWidget {
  const GoalsDay1Page({Key? key}) : super(key: key);

  @override
  _GoalsDay1PageState createState() => _GoalsDay1PageState();
}

class _GoalsDay1PageState extends State<GoalsDay1Page> {
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
                        padding: const EdgeInsets.only(top: 60),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Image.asset(
                          'lib/assets/images/banner.png',
                          width: double
                              .infinity, // Sesuaikan lebar gambar sesuai kebutuhan
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 170),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Day 1',
                          style: secondaryTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: MediaQuery.of(context).size.width * 0.07,
                          ),
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
                      top: 20,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: greyColor,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                          ),
                        ),
                        Image.asset(
                          'lib/assets/images/Breathing exercise-amico.png',
                          width: MediaQuery.of(context).size.height *
                              0.13, // Set the width as needed
                          fit: BoxFit
                              .contain, // Adjust the fit based on your preference
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Tarik Nafas Panjang',
                              style: textStyle.copyWith(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.03,
                                  fontWeight: bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '00:30',
                              style: greyTextStyle.copyWith(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.03),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: greyColor,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                          ),
                        ),
                        Image.asset(
                          'lib/assets/images/Pilates-amico.png',
                          width: MediaQuery.of(context).size.height *
                              0.13, // Set the width as needed
                          fit: BoxFit
                              .contain, // Adjust the fit based on your preference
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Relaksasi',
                              style: textStyle.copyWith(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.03,
                                  fontWeight: bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '01:00',
                              style: greyTextStyle.copyWith(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.03),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: greyColor,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                          ),
                        ),
                        Image.asset(
                          'lib/assets/images/Imagination-amico.png',
                          width: MediaQuery.of(context).size.height *
                              0.13, // Set the width as needed
                          fit: BoxFit
                              .contain, // Adjust the fit based on your preference
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Visualisasi',
                              style: textStyle.copyWith(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.03,
                                  fontWeight: bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '00:45',
                              style: greyTextStyle.copyWith(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.03),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: greyColor,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                          ),
                        ),
                        Image.asset(
                          'lib/assets/images/Mindfulness-amico.png',
                          width: MediaQuery.of(context).size.height *
                              0.13, // Set the width as needed
                          fit: BoxFit
                              .contain, // Adjust the fit based on your preference
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Meditasi',
                              style: textStyle.copyWith(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.03,
                                  fontWeight: bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '00:30',
                              style: greyTextStyle.copyWith(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.03),
                            ),
                          ],
                        ),
                      ],
                    ),
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
