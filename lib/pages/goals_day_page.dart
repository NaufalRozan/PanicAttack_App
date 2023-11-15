import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';

class GoalsDayPage extends StatefulWidget {
  final int day;
  final String anxietyLevel;

  GoalsDayPage({required this.day, required this.anxietyLevel});

  @override
  _GoalsDayPageState createState() => _GoalsDayPageState();
}

class _GoalsDayPageState extends State<GoalsDayPage> {
  late List<DayContent> _dayContent;

  @override
  void initState() {
    super.initState();
    _dayContent = getDayContent(widget.day);
  }

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
                          width: double.infinity,
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
                          'Day ${widget.day}',
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
                  for (var content in _dayContent)
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(
                                bottom: 20), // Jarak antar DayContent
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
                                  width:
                                      MediaQuery.of(context).size.height * 0.13,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      content.title,
                                      style: textStyle.copyWith(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.03,
                                          fontWeight: bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      content.duration,
                                      style: greyTextStyle.copyWith(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.03),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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

class DayContent {
  final String title;
  final String description;
  final String duration;

  DayContent({
    required this.title,
    required this.description,
    required this.duration,
  });
}

List<DayContent> getDayContent(int day) {
  switch (day) {
    case 1:
      return [
        DayContent(
          title: 'Tarik Nafas Panjang',
          description: 'Deskripsi latihan 1',
          duration: '00:30',
        ),
        DayContent(
          title: 'Relaksasi',
          description: 'Deskripsi latihan 2',
          duration: '01:00',
        ),
      ];
    case 2:
      return [
        // Konten untuk Day 2
      ];
    case 3:
      return [
        // Konten untuk Day 3
      ];
    default:
      return [];
  }
}
