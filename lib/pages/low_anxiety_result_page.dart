import 'package:flutter/material.dart';

class LowAnxietyResultPage extends StatefulWidget {
  const LowAnxietyResultPage({Key? key}) : super(key: key);

  @override
  _LowAnxietyResultPageState createState() => _LowAnxietyResultPageState();
}

class _LowAnxietyResultPageState extends State<LowAnxietyResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Low",
            style: TextStyle(
              fontSize: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}
