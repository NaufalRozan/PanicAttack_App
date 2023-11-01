import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/core.dart';

class MidAnxietyResultPage extends StatefulWidget {
  const MidAnxietyResultPage({Key? key}) : super(key: key);

  @override
  _MidAnxietyResultPageState createState() => _MidAnxietyResultPageState();
}

class _MidAnxietyResultPageState extends State<MidAnxietyResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 70, bottom: 70, left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cognitive Behavior\nTest Result",
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
                    color: cardYellow,
                    width: 3,
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: cardYellow.withOpacity(0.6),
                  radius: MediaQuery.of(context).size.height * 0.12,
                  backgroundImage:
                      AssetImage('lib/assets/images/Worried-amico.png'),
                ),
              ),
              Text(
                "Anxiety Level Mid",
                style: textStyle.copyWith(
                    fontSize: MediaQuery.of(context).size.width * 0.07,
                    fontWeight: bold),
                textAlign: TextAlign.center,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                style: textStyle.copyWith(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
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
                      'Go to Goals Page',
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
