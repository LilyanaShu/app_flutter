import 'package:flutter/material.dart';
import 'package:app_flutter/utils/app_styles.dart';
import 'package:app_flutter/utils/app_layout.dart';
import 'package:gap/gap.dart';

class Column_Widget extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const Column_Widget({Key? key, required this.textOne, required this.textTwo, required this.alignment, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: alignment,
        children: [
        Text(textOne, style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3.copyWith(color: Colors.black54),),
        Gap(AppLayout.getHeight(5)),
        Text(textTwo, style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4.copyWith(color: Colors.black26),),
      ]
    );
  }
}
