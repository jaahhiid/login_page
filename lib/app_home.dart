

import 'package:flutter/material.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('.appable/'),
        leading: const Icon(Icons.ondemand_video),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_shopping_cart),
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text('Heading', style: Theme.of(context).textTheme.headlineMedium),
            Text('Sub-Heading',
                style: Theme.of(context).textTheme.headlineSmall),
            Text('Paragraph', style: Theme.of(context).textTheme.bodyLarge),
            ElevatedButton(
                onPressed: () {}, child: const Text('Elevated Button')),
            OutlinedButton(
                onPressed: () {}, child: const Text('Outlined Button')),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(image: AssetImage('assets/images/books.jpg')),
            ),
          ],
        ),
      ),
    );
  }
}