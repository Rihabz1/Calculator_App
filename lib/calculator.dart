import 'package:flutter/material.dart';
import 'widget/Button.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String output = "0";
  String input = "0";
  String operator = "";
  double num1 = 0;
  double num2 = 0;
  bool shouldResetInput = false;

  void buttonPress(String value) {

    setState(() {
      if (value == "AC") {
        output = "0";
        input = "0";
        operator = "";
        num1 = 0;
        num2 = 0;
        shouldResetInput = false;
      } else if (value == "+" || value == "-" || value == "x" || value == "÷") {
        num1 = double.parse(input);
        operator = value;
        input = "0";
        shouldResetInput = false;
      } else if (value == "=") {
        num2 = double.parse(input);
        double result = 0;
        if (operator == "+") {
          result = num1 + num2;
        } else if (operator == "-") {
          result = num1 - num2;
        } else if (operator == "x") {
          result = num1 * num2;
        } else if (operator == "÷") {
          if (num2 == 0) {
            output = "Error";
          } else {
            result = num1 / num2;
          }
        }
        if (output != "Error") {
          output = (result % 1 == 0) ? result.toInt().toString() : result.toString();
        }
        input = output;
        operator = "";
        num1 = 0;
        num2 = 0;
        shouldResetInput = true;
      } else {
        if (shouldResetInput) {
          input = value;
          shouldResetInput = false;
        } else if (input == "0") {
          input = value;
        } else {
          input += value;
        }
        output = input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Banner(
        message: "Rihab",
        location: BannerLocation.topStart,
        color:  Colors.purple,
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  output,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Button(
                  onClick: () {
                    buttonPress("7");
                  },
                  text: "7",
                ),
                Button(onClick: () {
                  buttonPress("8");
                }, text: "8"),
                Button(onClick: () {
                  buttonPress("9");
                }, text: "9"),
                Button(onClick: () {
                  buttonPress("÷");
                }, text: "÷", color: Colors.orange),
              ],
            ),
            Row(
              children: [
                Button(onClick: () {
                  buttonPress("4");
                }, text: "4"),
                Button(onClick: () {
                  buttonPress("5");
                }, text: "5"),
                Button(onClick: () {
                  buttonPress("6");
                }, text: "6"),
                Button(onClick: () {
                  buttonPress("x");
                }, text: "x", color: Colors.orange),
              ],
            ),
            Row(
              children: [
                Button(onClick: () {
                  buttonPress("1");
                }, text: "1"),
                Button(onClick: () {
                  buttonPress("2");
                }, text: "2"),
                Button(onClick: () {
                  buttonPress("3");
                }, text: "3"),
                Button(onClick: () {
                  buttonPress("+");
                }, text: "+", color: Colors.orange),
              ],
            ),
            Row(
              children: [
                Button(onClick: () {
                  buttonPress("0");
                }, text: "0"),
                Button(onClick: () {
                  buttonPress("AC");
                }, text: "AC", color: Colors.green),
                Button(onClick: () {
                  buttonPress("=");
                }, text: "=", color: Colors.green),
                Button(onClick: () {
                  buttonPress("-");
                }, text: "-", color: Colors.orange),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
