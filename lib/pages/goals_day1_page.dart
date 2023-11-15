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
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: greyColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
