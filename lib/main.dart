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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                CancelButton(),
                SizedBox(width: 10),
                ModulousButton(),
                SizedBox(width: 10),
                DeleteButton(),
                SizedBox(width: 10),
                DivisionButton(),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: const [
                SevenButton(),
                SizedBox(width: 10),
                EightButton(),
                SizedBox(width: 10),
                NineButton(),
                SizedBox(width: 10),
                MultiplyButton(),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: const [
                FourButton(),
                SizedBox(width: 10),
                FiveButton(),
                SizedBox(width: 10),
                SixButton(),
                SizedBox(width: 10),
                SubtractButton(),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: const [
                OneButton(),
                SizedBox(width: 10),
                TwoButton(),
                SizedBox(width: 10),
                ThreeButton(),
                SizedBox(width: 10),
                AddButton(),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                ZeroZeroButton(),
                ZeroButton(),
                AssignmentButton(buttonColor: Colors.grey, buttonValue: '.', valueColor: Colors.black),
                AssignmentButton(buttonColor: Colors.red),
                ],
              ),
            ],
          ),
        ),

      ),

    );
  }
}