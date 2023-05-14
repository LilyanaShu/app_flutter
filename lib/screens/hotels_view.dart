import 'package:app_flutter/utils/app_layout.dart';
import 'package:app_flutter/utils/app_styles.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

class HotelsScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelsScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 15, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 25,
            spreadRadius: 5,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
                //color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/images/${hotel['image']}"
                  )
              )
            ),
          ),
          const Gap(10),
          Text("${hotel['place']}", style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),
          const Gap(5),
          Text("${hotel['destination']}", style: Styles.headLineStyle3.copyWith(color: Styles.kakiColor),),
          const Gap(8),
          Text("\$${hotel['price']}/night", style: Styles.headLineStyle.copyWith(color: Styles.kakiColor),)
        ],
      ),
    );
  }
}
