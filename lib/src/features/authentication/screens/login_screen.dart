import 'package:flutter/material.dart';

import 'login/widgets/login_footer_widget.dart';
import 'login/widgets/login_header_widget.dart';
import 'login/widgets/login_screen_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LoginHeaderWidget(),
              FormNewWidget(),
              LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
