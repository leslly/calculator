import 'package:flutter/material.dart';

class AssignmentButton extends StatelessWidget {
  const AssignmentButton({Key? key, required this.buttonColor, this.buttonValue = '=', this.valueColor = Colors.white, this.a = '0'}) : super(key: key);


  final Color buttonColor;
  final String buttonValue;
  final Color valueColor;
  final String a;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(a);
      },
       child: Container(
         alignment: Alignment.center,
         height: 75,
         width: 73,
         decoration:  BoxDecoration(
           borderRadius: BorderRadius.circular(9),
           color: buttonColor,
         ),
         child: Text(
           buttonValue,
           style: TextStyle(
             fontSize: 36,
             color: valueColor,
             fontWeight: FontWeight.normal,
           ),
         ),
    ),
    );
  }
}


