import 'package:flutter/material.dart';

class DashboardCategoriesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategoriesModel(
      this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardCategoriesModel> list = [
    DashboardCategoriesModel('Novel', 'Nazrul', '2 books', () {}),
    DashboardCategoriesModel('Novel', 'Nazrul', '2 books', () {}),
    DashboardCategoriesModel('Novel', 'Nazrul', '2 books', () {}),
    DashboardCategoriesModel('Novel', 'Nazrul', '2 books', () {}),
    DashboardCategoriesModel('Novel', 'Nazrul', '2 books', () {}),
  ];
}
