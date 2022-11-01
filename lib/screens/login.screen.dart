import 'package:flutter/material.dart';

import 'widgets/background.widget.dart';
import 'widgets/bottom_buttom_text..widget.dart';
import 'widgets/login_form.widget.dart';
import 'widgets/logo.widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                child: Stack(
                  children: const [
                    BackgroundWidget(),
                    Center(
                      child: LogoWidget(),
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: 280,
                child: LoginFormWidget(),
              ),
              const Positioned.fill(
                top: 480,
                child: Align(
                    alignment: Alignment.center,
                    child: BottomButtonTextWidget()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
