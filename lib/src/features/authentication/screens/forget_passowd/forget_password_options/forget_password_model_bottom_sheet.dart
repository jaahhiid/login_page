import 'package:flutter/material.dart';
import 'package:login_page/src/features/authentication/screens/forget_passowd/forget_password_mail/forget_password_mail.dart';

import 'forget_password_button_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Make Selection',
                style: Theme.of(context).textTheme.bodyMedium),
            Text(
                'Select One of the options given below to reset your password.',
                style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 30),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: 'E-Mail',
              subTitle: 'Reset Via Mail',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ForgetPasswordMailScreen()));
              },
            ),
            const SizedBox(height: 10),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: 'Reset Via Phone',
              subTitle: 'Phone NO',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
