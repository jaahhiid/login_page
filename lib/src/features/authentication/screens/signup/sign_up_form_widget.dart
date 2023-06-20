import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              label: Text('Full Name'),
              prefixIcon: Icon(Icons.person_outline_outlined),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
              label: Text('Email'),
              prefixIcon: Icon(Icons.email_outlined),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
              label: Text('Phone Number'),
              prefixIcon: Icon(Icons.numbers),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
              label: Text('Password'),
              prefixIcon: Icon(Icons.fingerprint),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: const Text('SignUp')),
          )
        ],
      ),
    );
  }
}