import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          //print(equivalence of the inputs);
        },
        child: Container(
          alignment: Alignment.center,
          height: 75,
          width: 73,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: const Text(
            'C',
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

