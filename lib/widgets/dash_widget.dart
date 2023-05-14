import 'package:flutter/material.dart';

class DashWidget extends StatelessWidget {
  final double width;
  final double section;
  final bool? isColor;
  const DashWidget({Key? key, required this.width, required this.section, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate((constraints.constrainWidth()/section).floor(), (index) => SizedBox(
            width: width, height: 1, child: DecoratedBox(decoration: BoxDecoration(
              color: isColor==null? Colors.white : Colors.grey
          ),),
          )),
        );
      },
    );
  }
}
