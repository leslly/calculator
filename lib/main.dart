import 'package:calculator/buttons/operator_buttons/cancel_button.dart';
import 'package:flutter/material.dart';

import 'buttons/numbers_button/decimal_button.dart';
import 'buttons/numbers_button/eight_button.dart';
import 'buttons/numbers_button/five_button.dart';
import 'buttons/numbers_button/four_button.dart';
import 'buttons/numbers_button/nine_button.dart';
import 'buttons/numbers_button/one_button.dart';
import 'buttons/numbers_button/seven_button.dart';
import 'buttons/numbers_button/six_button.dart';
import 'buttons/numbers_button/three_button.dart';
import 'buttons/numbers_button/two_button.dart';
import 'buttons/numbers_button/zero_button.dart';
import 'buttons/numbers_button/zerozero_button.dart';
import 'buttons/operator_buttons/add_button.dart';
import 'buttons/operator_buttons/assignment_button.dart';
import 'buttons/operator_buttons/delete_button.dart';
import 'buttons/operator_buttons/division_button.dart';
import 'buttons/operator_buttons/modulous_button.dart';
import 'buttons/operator_buttons/multiply_button.dart';
import 'buttons/operator_buttons/subtract_button.dart';
//import 'package:calculator';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const CalculatorView(),
      /* MyHomePage(title: 'Flutter Demo Home Page'),*/
    );
  }
}



class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.bottomRight,
                height: 220,
                child: const Text(
                  '0',////textToDisplay
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(child: AssignmentButton(buttonColor: Colors.black, buttonValue: 'C', valueColor: Colors.white)),
                  SizedBox(width: 10),
                  Expanded(child: AssignmentButton(buttonColor: Colors.black, buttonValue: '%', valueColor: Colors.white)),
                  SizedBox(width: 10),
                  Expanded(child: AssignmentButton(buttonColor: Colors.black, buttonValue: 'DEL', valueColor: Colors.white)),
                  SizedBox(width: 10),
                  Expanded(child: AssignmentButton(buttonColor: Colors.black, buttonValue: '/', valueColor: Colors.white)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(child: AssignmentButton(buttonColor: Colors.grey, buttonValue: '7', valueColor: Colors.black, a: '7',)),
                  SizedBox(width: 10),
                  Expanded(child: AssignmentButton(buttonColor: Colors.grey, buttonValue: '8', valueColor: Colors.black, a: '8',)),
                  SizedBox(width: 10),
                  Expanded(child: AssignmentButton(buttonColor: Colors.grey, buttonValue: '9', valueColor: Colors.black, a: '9',)),
                  SizedBox(width: 10),
                  Expanded(child: AssignmentButton(buttonColor: Colors.black, buttonValue: 'x', valueColor: Colors.white, a: 'x',)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(child: AssignmentButton(buttonColor: Colors.grey, buttonValue: '4', valueColor: Colors.black, a: '4',)),
                  SizedBox(width: 10),
                  Expanded(child: AssignmentButton(buttonColor: Colors.grey, buttonValue: '5', valueColor: Colors.black, a: '5',)),
                  SizedBox(width: 10),
                  Expanded(child: AssignmentButton(buttonColor: Colors.grey, buttonValue: '6', valueColor: Colors.black, a: '6')),
                  SizedBox(width: 10),
                  Expanded(child: AssignmentButton(buttonColor: Colors.black, buttonValue: '-', valueColor: Colors.white, a: '-',)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(child: AssignmentButton(buttonColor: Colors.grey, buttonValue: '1', valueColor: Colors.black, a: '1',)),
                  SizedBox(width: 10),
                  Expanded(child: AssignmentButton(buttonColor: Colors.grey, buttonValue: '2', valueColor: Colors.black, a: '2',)),
                  SizedBox(width: 10),
                  Expanded(child: AssignmentButton(buttonColor: Colors.grey, buttonValue: '3', valueColor: Colors.black, a: '3',)),
                  SizedBox(width: 10),
                  Expanded(child: AssignmentButton(buttonColor: Colors.black, buttonValue: '+', valueColor: Colors.white, a: '+',)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                Expanded(child: AssignmentButton(buttonColor: Colors.grey, buttonValue: '00', valueColor: Colors.black, a: '00',)),
                  SizedBox(width: 10),
                Expanded(child: AssignmentButton(buttonColor: Colors.grey, buttonValue: '0', valueColor: Colors.black, a: '0',)),
                  SizedBox(width: 10),
                Expanded(child: AssignmentButton(buttonColor: Colors.grey, buttonValue: '.', valueColor: Colors.black, a: '.',)),
                  SizedBox(width: 10),
                Expanded(child: AssignmentButton(buttonColor: Colors.black)),
                ],
              ),
            ],
          ),
        ),

      ),

    );
  }
}
