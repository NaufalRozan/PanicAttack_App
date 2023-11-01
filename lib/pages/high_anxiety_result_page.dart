import 'package:flutter/material.dart';

class HighAnxietyResultPage extends StatefulWidget {
  const HighAnxietyResultPage({ Key? key }) : super(key: key);

  @override
  _HighAnxietyResultPageState createState() => _HighAnxietyResultPageState();
}

class _HighAnxietyResultPageState extends State<HighAnxietyResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "high",
            style: TextStyle(
              fontSize: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}