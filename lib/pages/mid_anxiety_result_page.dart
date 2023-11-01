import 'package:flutter/material.dart';

class MidAnxietyResultPage extends StatefulWidget {
  const MidAnxietyResultPage({ Key? key }) : super(key: key);

  @override
  _MidAnxietyResultPageState createState() => _MidAnxietyResultPageState();
}

class _MidAnxietyResultPageState extends State<MidAnxietyResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "mid",
            style: TextStyle(
              fontSize: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}