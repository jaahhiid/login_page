import 'package:flutter/material.dart';
import 'package:login_page/src/features/authentication/welcome.dart';
import 'package:login_page/src/utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home:const WelcomeScreen(),
    );
  }
}
