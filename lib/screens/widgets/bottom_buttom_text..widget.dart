import 'package:flutter/material.dart';

class BottomButtonTextWidget extends StatelessWidget {
  const BottomButtonTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 250,
          height: 55,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(56, 123, 212, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: const Center(
            child: Text(
              'LOGIN',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const Text(
          'FORGOT PASSWORD?',
          style: TextStyle(color: Colors.black54, fontSize: 16),
        ),
      ],
    );
  }
}
