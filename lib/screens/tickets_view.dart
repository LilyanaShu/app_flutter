import 'package:flutter/material.dart';
import 'package:app_flutter/utils/app_layout.dart';
import 'package:app_flutter/utils/app_styles.dart';
import 'package:app_flutter/widgets/thick_container.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:app_flutter/widgets/Column_widget.dart';
import 'package:app_flutter/widgets/dash_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.8,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true?183:185),
      child: Container(
        margin: const EdgeInsets.only(left: 12),
        child: Column(
            //mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(15),
            /*
            Blue part ticket
             */
            Container(
              decoration: BoxDecoration(
                color: isColor==null? const Color(0xFF526799) : Colors.white,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'], style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3.copyWith(color: Colors.black),),
                      const Spacer(),
                      ThickContainer(isColor: isColor),
                      Expanded(child: Stack(
                          children: [
                            SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints){
                                //print("the width is ${constraints.constrainWidth()}");
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                    width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                      color: isColor==null? Colors.white : Colors.lightBlueAccent
                                  ),),
                                  )),
                                );
                              },
                            )),
                            Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor==null? Colors.white : Colors.lightBlueAccent,),)),
                        ],),
                      ),
                      ThickContainer(isColor: isColor,),
                      const Spacer(),
                      Text(ticket['to']['code'], style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3.copyWith(color: Colors.black),)
                  ],),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100, child: Text(ticket['from']['name'], style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle3.copyWith(color: Colors.black26),),
                      ),
                      Text(ticket['flying_time'], style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle3.copyWith(color: Colors.black),),
                      SizedBox(
                        width: 100, child: Text(ticket['to']['name'], textAlign: TextAlign.end, style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle3.copyWith(color: Colors.black26),),
                      )       ],
                  ),
                ],
              ),
            ),
            /*
            Orange part ticket
             */
            Container(
              color: isColor==null? Styles.orangeColor : Colors.white70,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null? Colors.white : Colors.white70,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                  Expanded(child: DashWidget(width: 7, section:14, isColor: isColor,)),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(
                  color: isColor==null? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: isColor==null? const Radius.circular(21) : const Radius.circular(0), bottomRight: isColor==null? const Radius.circular(21) : const Radius.circular(0))
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column_Widget(textOne: ticket['date'], textTwo: "DATE", alignment: CrossAxisAlignment.start, isColor: isColor,),
                      Column_Widget(textOne: ticket['departure_time'], textTwo: "Departure time", alignment: CrossAxisAlignment.center, isColor: isColor,),
                      Column_Widget(textOne: ticket['number'].toString(), textTwo: "number", alignment: CrossAxisAlignment.end, isColor: isColor,),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
