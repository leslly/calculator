import 'package:flutter/material.dart';

class AssignmentButton extends StatefulWidget {
  const AssignmentButton({Key? key, required this.buttonColor, this.buttonValue = '=', this.valueColor = Colors.white, this.a = '0'}) : super(key: key);


  final Color buttonColor;
  final String buttonValue;
  final Color valueColor;
  final String a;

  @override
  State<AssignmentButton> createState() => _AssignmentButtonState();
}

class _AssignmentButtonState extends State<AssignmentButton> {
  double firstNum = 0;

  double secondNum = 0;

  String textToDisplay = '';

  String res = '';

  String operation = '';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(widget.buttonValue);
        if (widget.buttonValue == 'C'){
          textToDisplay = '';
          firstNum = 0;
          secondNum = 0;
          res = '';
        }else if (widget.buttonValue == 'DEL'){
          textToDisplay = '';
          firstNum = 0;
          secondNum = 0;
          res = '';
        }else if(widget.buttonValue == '+' || widget.buttonValue == '-' || widget.buttonValue == 'x' || widget.buttonValue == '/'){
          firstNum = double.parse(textToDisplay);
          res = '';
          operation = widget.buttonValue;
        }else if (widget.buttonValue == '='){
          secondNum = double.parse(textToDisplay);
          if(operation == '+'){
            res = (firstNum + secondNum).toString();
          }if(operation == '-'){
            res = (firstNum - secondNum).toString();
          }if(operation == 'x'){
            res = (firstNum * secondNum).toString();
          }if(operation == '/'){
            res = (firstNum / secondNum).toString();
          }
        }else{
          res = double.parse(textToDisplay + widget.buttonValue).toString();
        }

        setState(() {
          textToDisplay = res;
        }
        );
      },
       child: Container(
         alignment: Alignment.center,
         height: 75,
         width: 73,
         decoration:  BoxDecoration(
           borderRadius: BorderRadius.circular(9),
           color: widget.buttonColor,
         ),
         child: Text(
           widget.buttonValue,
           style: TextStyle(
             fontSize: 36,
             color: widget.valueColor,
             fontWeight: FontWeight.normal,
           ),
         ),
    ),
    );
  }
}


