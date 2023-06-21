import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../models/dashboard/top_books.dart';

class DashboardTopBooks extends StatelessWidget {
  const DashboardTopBooks({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final listTop = DashboardTopBooksModel.listTop;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: listTop.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SizedBox(
          width: 320,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(right: 10, top: 5),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: tCardBgColor),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(listTop[index].title,
                          style: textTheme.titleLarge,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis),
                      Image(
                          image: AssetImage(listTop[index].imageAsset),
                          height: 110),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder()),
                          onPressed: () {},
                          child: const Icon(Icons.play_arrow)),
                      const SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(listTop[index].heading,
                              style: textTheme.titleMedium,
                              overflow: TextOverflow.ellipsis),
                          Text(listTop[index].subHeading,
                              style: textTheme.bodyMedium,
                              overflow: TextOverflow.ellipsis),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
