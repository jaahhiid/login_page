import 'package:flutter/material.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image(
            image: const AssetImage('assets/images/booksplash.jpg'),
            height: size.height * 0.2),
        Text('Welcome', style: Theme.of(context).textTheme.headlineSmall),
        Text(
          'Make it Work',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
