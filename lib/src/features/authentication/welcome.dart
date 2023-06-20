import 'package:flutter/material.dart';
import 'package:login_page/src/constants/colors.dart';
import 'package:login_page/src/features/authentication/screens/login_screen.dart';
import 'package:login_page/src/features/authentication/screens/signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: const AssetImage('assets/images/book1.jpg'),
              height: height * 0.6,
            ),
            Column(
              children: [
                const Text('Welcome to Library',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                  'This is the login Page. Follow the instructions',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    // onPressed: () => Get.to(() => AppHome()),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   const SnackBar(
                      //     content: Text('Icon button is pressed'),
                      //   ),
                      // );
                    },
                    child: const Text('LOGIN'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                        }, child: const Text('SIGNUP'))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
