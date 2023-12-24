import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  late List<DayContent> _dayContent = [];

  @override
  void initState() {
    super.initState();
    _loadDayContent();
  }

  Future<void> _loadDayContent() async {
    List<DayContent> dayContent =
        getDayContent(widget.day, widget.anxietyLevel);
    await _getCompletedStatus(dayContent);

    setState(() {
      _dayContent = dayContent;
    });
  }

  Future<void> _getCompletedStatus(List<DayContent> dayContent) async {
    final currentUser = FirebaseAuth.instance.currentUser;
    final userDoc =
        FirebaseFirestore.instance.collection('users').doc(currentUser!.uid);

    for (DayContent content in dayContent) {
      DocumentSnapshot doc =
          await userDoc.collection('completedContents').doc(content.id).get();
      if (doc.exists) {
        // Update status completed berdasarkan data Firestore
        setState(() {
          content.completed = doc['completed'] ?? false;
        });
      }
    }
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ContentDetailPage(
                                    content: content, contentList: _dayContent),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            height: MediaQuery.of(context).size.height * 0.18,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              color: content.completed
                                  ? primaryButtonColor
                                  : whiteColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 1,
                                color: greyColor,
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
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
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                        fontWeight: bold,
                                        color: content.completed
                                            ? whiteColor
                                            : textColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      content.duration,
                                      style: greyTextStyle.copyWith(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                        fontWeight: bold,
                                        color: content.completed
                                            ? whiteColor
                                            : greyColor,
                                      ),
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