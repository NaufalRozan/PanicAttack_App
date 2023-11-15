import 'package:flutter/material.dart';
import 'package:panicattack_app/core.dart';
import 'package:panicattack_app/helper.dart';
import 'package:panicattack_app/pages/goals_day_page.dart';

class GoalsPage extends StatefulWidget {
  final String anxietyLevel;

  const GoalsPage({Key? key, required this.anxietyLevel}) : super(key: key);

  @override
  _GoalsPageState createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  late List<int> _days;

  @override
  Widget build(BuildContext context) {
    _days = getDays(widget.anxietyLevel);

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
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 2.0, color: primaryButtonColor),
                            bottom: BorderSide(width: 2.0, color: primaryButtonColor),
                          ),
                        ),
                        child: Image.asset(
                          'lib/assets/images/Stretching exercises-pana.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
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
                            fontSize: MediaQuery.of(context).size.width * 0.07,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: List.generate(
                    _days.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GoalsDayPage(
                                day: _days[index],
                                anxietyLevel: widget.anxietyLevel,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: primaryButtonColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'Day ${_days[index]}',
                            style: whiteTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: MediaQuery.of(context).size.width * 0.1,
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
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

