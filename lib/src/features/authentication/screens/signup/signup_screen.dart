import 'package:flutter/material.dart';
import 'package:login_page/src/common_widgets/form/form_header_widgets.dart';

import 'sign_up_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                const FormHeaderWidget(
                    image: 'assets/images/booksplash.jpg',
                    title: 'Sign Up',
                    subTitle: 'Follow the Instruction'),
                const SignUpForm(),
                Column(
                  children: [
                    const Text('OR'),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Image(
                              image: AssetImage('assets/logo/google.png'),
                              width: 20.0),
                          label: const Text('Sign-in-with Google')),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: 'Already Have an Account? ',
                              style: Theme.of(context).textTheme.bodyMedium),
                          const TextSpan(
                            text: 'LOGIN',
                          ),
                        ]),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
