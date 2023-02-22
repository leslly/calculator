import 'package:flutter/material.dart';

class FourButton extends StatelessWidget {
  const FourButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(4);
      },
      child: Container(
        alignment: Alignment.center,
        height: 75,
        width: 73,
        decoration: const BoxDecoration(
          color: Colors.grey,
        ),
        child: const Text(
          '1',
          style: TextStyle(
            fontSize: 36,
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
