import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: Colors.black),
      title: Text('Library', style: Theme.of(context).textTheme.titleLarge),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: tCardBgColor),
          child: IconButton(
              onPressed: () {},
              icon:
                  const Image(image: AssetImage('assets/dashboard/user.png'))),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
