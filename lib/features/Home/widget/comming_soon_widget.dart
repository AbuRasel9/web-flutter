import 'package:flutter/material.dart';

class CommingSoonWidget extends StatefulWidget {
  const CommingSoonWidget({super.key});

  @override
  State<CommingSoonWidget> createState() => _CommingSoonWidgetState();
}

class _CommingSoonWidgetState extends State<CommingSoonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "comming soon",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}
