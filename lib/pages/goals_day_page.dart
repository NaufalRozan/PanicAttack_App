import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/pages/content_detail_page.dart';
import 'package:panicattack_app/utils/goal_util.dart';

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
    _dayContent = getDayContent(widget.day, widget.anxietyLevel);
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
                          onTap: () {
                            // Navigasi ke halaman detail konten dengan membawa data konten
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ContentDetailPage(content: content, contentList: _dayContent),

                              ),
                            );
                          },
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
                                  content.imagePath,
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
                                              0.03,
                                          fontWeight: bold),
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
