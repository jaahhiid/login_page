import 'package:flutter/material.dart';
import 'package:login_page/src/common_widgets/form/form_header_widgets.dart';

import '../forget_password_otp/otp_screen.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 120),
              const FormHeaderWidget(
                image: 'assets/images/forget.jpg',
                title: 'Forget Password',
                subTitle:
                    'Select one of the options given below to reset your password',
                crossAxisAlignment: CrossAxisAlignment.center,
                heightBetween: 30,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text('E-Mail'),
                        hintText: 'E-Mail',
                        prefixIcon: Icon(Icons.mail_outline_rounded),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OTPScreen()));
                        },
                        child: const Text('Next'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
