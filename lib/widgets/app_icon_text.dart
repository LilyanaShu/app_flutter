import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:app_flutter/utils/app_styles.dart';
import 'package:app_flutter/utils/app_layout.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(12), horizontal: AppLayout.getWidth(12)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: Colors.white
        ),
        child: Row(
          //textDirection: TextDirection.rtl,
            children: [
              Icon(icon, color: Colors.grey,),
              Gap(AppLayout.getWidth(10)),
              Text(text, style: Styles.textStyle,),
            ]
        ),
      );
  }
}
