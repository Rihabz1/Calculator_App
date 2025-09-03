import 'package:flutter/material.dart';
import 'widget/Button.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.bottomRight,
              child: Text("55", style: TextStyle(color: Colors.white, fontSize: 50,fontWeight: FontWeight.bold)),
            ),
          ),
          Row(
            children: [
              Button(onClick: () {}, text: "7"),
              Button(onClick: () {}, text: "8"),
              Button(onClick: () {}, text: "9"),
              Button(onClick: () {}, text: "÷", color: Colors.orange),
            ],
          ),
          Row(
            children: [
              Button(onClick: () {}, text: "4"),
              Button(onClick: () {}, text: "5"),
              Button(onClick: () {}, text: "6"),
              Button(onClick: () {}, text: "x", color: Colors.orange),
            ],
          ),
          Row(
            children: [
              Button(onClick: () {}, text: "1"),
              Button(onClick: () {}, text: "2"),
              Button(onClick: () {}, text: "3"),
              Button(onClick: () {}, text: "+", color: Colors.orange),
            ],
          ),
          Row(
            children: [
              Button(onClick: () {}, text: "0"),
              Button(onClick: () {}, text: "AC", color: Colors.green),
              Button(onClick: () {}, text: "=", color: Colors.green),
              Button(onClick: () {}, text: "x", color: Colors.orange),
            ],
          ),
          SizedBox(height: 50),

        ],
      ),
    );
  }
}

