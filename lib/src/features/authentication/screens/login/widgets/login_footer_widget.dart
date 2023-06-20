import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('OR'),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Image(
                  image: AssetImage('assets/logo/google.png'),
                  width: 20.0),
              label: const Text('Sign-in-with Google')),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: Theme.of(context).textTheme.bodyMedium,
              children: const [
                TextSpan(
                  text: 'SignUp',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}