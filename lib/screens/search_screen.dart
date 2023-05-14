import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:app_flutter/utils/app_styles.dart';
import 'package:app_flutter/utils/app_layout.dart';
import 'package:app_flutter/widgets/Tab_widget.dart';
import 'package:app_flutter/widgets/app_icon_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10), vertical: AppLayout.getHeight(40)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text('What are\nyou looking for?', style: Styles.headLineStyle.copyWith(fontSize: AppLayout.getHeight(32))),
          Gap(AppLayout.getHeight(20)),
          const TabWidget(firstTab: 'Airline Tickets', secondTab: 'Hotels'),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(12), horizontal: AppLayout.getWidth(12)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                color: const Color(0xFF526799)
            ),
            child: Center(
              //textDirection: TextDirection.rtl,
                child: Text('find tickets', style: Styles.textStyle.copyWith(color: Colors.white)),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Upcoming Flights", style: Styles.headLineStyle2,),
                InkWell(
                  onTap: (){
                    //print("You are tapped");
                  },
                  child: Text("View All", style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
                )
              ]
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                height: AppLayout.getHeight(380),
                width: size.width*0.49,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
                  color: Colors.white,
                  boxShadow: [
                     BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 2,
                      spreadRadius: 1
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(220),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/flight.jpeg")
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text("20% discount on the early booking of this flight.\nDon't miss out this chance.",
                    style: Styles.headLineStyle3.copyWith(color: Colors.black),),
                  ]
                )
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                          height: AppLayout.getHeight(180),
                          width: size.width*0.42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
                            color: const Color(0xFF3ABBB8),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text("Discount\nfor survey", style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                                Gap(AppLayout.getHeight(5)),
                                Text("Take this survey about our services and get discount", style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                              ]
                          )
                      ),
                      Positioned(
                        top: -45,
                        right: -45,
                        child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(width: 18, color: Colors.teal),
                                color: Colors.transparent
                            )
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getHeight(15)),
                    height: AppLayout.getHeight(180),
                    width: size.width*0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
                      color: Styles.orangeColor,
                    ),
                    child: Column(
                      children: [
                        Text("Take Love", style: Styles.headLineStyle2.copyWith(color: Colors.white,),),
                        Gap(AppLayout.getHeight(10)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 30)
                              ),
                              TextSpan(
                                  text: '🥰',
                                  style: TextStyle(fontSize: 40)
                              ),
                              TextSpan(
                                  text: '😘',
                                  style: TextStyle(fontSize: 30)
                              )
                            ]
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
