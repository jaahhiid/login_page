import 'package:flutter/material.dart';

class DashboardTopBooksModel {
  final String title;
  final String imageAsset;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardTopBooksModel(
      this.title, this.imageAsset, this.heading, this.subHeading, this.onPress);

  static List<DashboardTopBooksModel> listTop = [
    DashboardTopBooksModel('Rabindranath', 'assets/dashboard/dbook.jpg', '3 Sections', '2 books', () {}),
    DashboardTopBooksModel('Nazrul', 'assets/dashboard/dbook.jpg', '3 Sections', '2 books', () {}),
    DashboardTopBooksModel('Zahir Rayhan', 'assets/dashboard/dbook.jpg', '3 Sections', '2 books', () {}),
    DashboardTopBooksModel('Anamul', 'assets/dashboard/dbook.jpg', '3 Sections', '2 books', () {}),
    
  ];

  
}
