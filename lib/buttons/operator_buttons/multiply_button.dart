import 'package:flutter/material.dart';

class MultiplyButton extends StatelessWidget {
  const MultiplyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print('x');
      },
      child: Container(
        alignment: Alignment.center,
        height: 75,
        width: 73,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: const Text(
          'x',
          style: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
