import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Code',
              style: GoogleFonts.montserrat(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('VERIFICATION', style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 40),
            const Text(
              'Enter the verification code sent at support@gmail.com',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code) {
                print('OTP is => $code');
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Next'))),
          ],
        ),
      ),
    );
  }
}
