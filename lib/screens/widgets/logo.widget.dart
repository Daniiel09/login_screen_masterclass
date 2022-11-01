import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 125,
      margin: const EdgeInsets.only(bottom: 40),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
      ),
      child: ShaderMask(
        blendMode: BlendMode.srcATop,
        child: const Icon(
          Icons.home,
          size: 90,
        ),
        shaderCallback: (bounds) {
          return const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromRGBO(90, 70, 204, 1),
              Color.fromRGBO(74, 112, 195, 1),
            ],
          ).createShader(bounds);
        },
      ),
    );
  }
}
