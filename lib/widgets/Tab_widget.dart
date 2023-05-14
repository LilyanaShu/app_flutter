import 'package:flutter/material.dart';
import 'package:app_flutter/utils/app_layout.dart';

class TabWidget extends StatelessWidget {
  final String firstTab;
  final String secondTab;

  const TabWidget({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
        child: Row(
          children: [
            Container(
                width: size.width/2,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white,
                ),
                child: Center(child: Text(firstTab),)
            ),
            Container(
                width: size.width/2,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white38,
                ),
                child: Center(child: Text(secondTab),)
            )
          ],
        )
    );
  }
}
