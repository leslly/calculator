import 'package:flutter/material.dart';

class AssignmentButton extends StatelessWidget {
  const AssignmentButton({Key? key, required this.buttonColor, this.buttonValue = '=', this.valueColor = Colors.white}) : super(key: key);


  final Color buttonColor;
  final String buttonValue;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //print(equivalence of the inputs);
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
