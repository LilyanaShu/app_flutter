import 'package:flutter/material.dart';
import 'package:app_flutter/utils/app_layout.dart';
import 'package:app_flutter/utils/app_styles.dart';
import 'package:app_flutter/utils/app_info_list.dart';
import 'package:gap/gap.dart';
import 'package:app_flutter/widgets/Column_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> hotel = ticketList[0];
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(70)),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    width: size.width/5,
                    height: AppLayout.getHeight(90),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(20))
                    ),
                    child : Image.asset('assets/images/img_5.png'),
                  ),
                ],
              ),
              Gap(AppLayout.getWidth(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headLineStyle2.copyWith(fontSize: AppLayout.getHeight(30)),),
                  Text(hotel['from']['name'], style: Styles.headLineStyle4.copyWith(color: Colors.black26),),
                  Container(
                    margin: EdgeInsets.only(top: AppLayout.getHeight(10)),
                    height: AppLayout.getHeight(25),
                    width: size.width/3,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                      color: Colors.white,
                      //image: Image.asset(Icons.abc_rounded)
                    ),
                    child: Row(
                      children:[
                        Icon(Icons.workspace_premium, color: Styles.primaryColor,),
                        Text("Premium status", style: Styles.headLineStyle4.copyWith(color: Styles.primaryColor),)
                      ]
                    ),

                  )
                ],
              ),
              Gap(AppLayout.getWidth(55)),
              Column(
                children: [
                  Gap(AppLayout.getWidth(5)),
                  Text("Edit", style: Styles.headLineStyle3.copyWith(color: Styles.primaryColor),)
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                //alignment: AlignmentDirectional.lerp(a, b, t),
                children: [

                  Container(
                    //margin: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20), horizontal: AppLayout.getHeight(10)),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8), horizontal: AppLayout.getHeight(10)),
                    width: size.width*0.89,
                    height: AppLayout.getHeight(100),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                      shape: BoxShape.rectangle
                    ),

                  ),
                  Positioned(
                      right: -40,
                      top: -40,
                      child: Container(
                        //height: AppLayout.getHeight(50),
                        //width: size.width/3,
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(color: Colors.indigo, width: 20)
                        ),
                      )
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20), horizontal: AppLayout.getHeight(20)),
                        //padding: EdgeInsets.only(top: AppLayout.getHeight(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.lightbulb_circle_outlined, size: AppLayout.getWidth(50), color: Colors.white,)
                              ],
                            ),
                            Gap(AppLayout.getWidth(20)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("You've got a new award", style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                                Text("You have 180 flights in a year", style: Styles.headLineStyle3.copyWith(color: Colors.white60),)
                              ],
                            ),
                          ],
                        ),

                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Accumulted miles", style: Styles.headLineStyle2,)
            ],
          ),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("192802", style: Styles.headLineStyle.copyWith(fontSize: AppLayout.getWidth(38)),)
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Miles accrued", style: Styles.headLineStyle4.copyWith(color: Colors.black26),),
              Text("14 May 2023", style: Styles.headLineStyle4.copyWith(color: Colors.black26),),
            ],
          ),
          Gap(AppLayout.getHeight(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
               Column_Widget(textOne: '23 765', textTwo: 'Miles', alignment: CrossAxisAlignment.start, isColor: true,),
               Column_Widget(textOne: 'Airline CD', textTwo: 'Received from', alignment: CrossAxisAlignment.end, isColor: true,),

            ],
          ),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
               Column_Widget(textOne: "McDonald's", textTwo: 'Received from', alignment: CrossAxisAlignment.start, isColor: true,),
               Column_Widget(textOne: '25', textTwo: 'Miles', alignment: CrossAxisAlignment.end, isColor: true,),
            ],
          ),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
               Column_Widget(textOne: '53 595', textTwo: 'Miles', alignment: CrossAxisAlignment.start, isColor: true,),
               Column_Widget(textOne: 'Exuma', textTwo: 'Received from', alignment: CrossAxisAlignment.end, isColor: true,),

            ],
          ),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("How to get more miles", style: Styles.headLineStyle3.copyWith(color: Styles.primaryColor),)
            ],
          )
      ],
      )
    );
  }
}
