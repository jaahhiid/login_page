import 'package:flutter/material.dart';
import 'package:login_page/src/features/core/screens/dashboard/widgets/categories.dart';

import 'widgets/appbar.dart';
import 'widgets/banner.dart';
import 'widgets/search.dart';
import 'widgets/top_books.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Heading
              Text('Hey, Welcome to The Library', style: textTheme.bodyLarge),
              Text('Hey, Explore the library', style: textTheme.bodyMedium),
              const SizedBox(height: 30),
              //Search Box
              DashboardSearchBox(textTheme: textTheme),
              const SizedBox(height: 30),
              //Categories
              DashboardCategories(textTheme: textTheme),
              const SizedBox(height: 30),
              //Banners
              DashboardBanner(textTheme: textTheme),
              const SizedBox(height: 30),
              //top books
              Text('Top Books',
                  style: textTheme.headlineSmall?.apply(fontSizeFactor: 1.2)),
              DashboardTopBooks(textTheme: textTheme),
            ],
          ),
        ),
      ),
    );
  }
}
