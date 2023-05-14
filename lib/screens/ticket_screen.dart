import 'package:flutter/material.dart';
import 'package:app_flutter/utils/app_styles.dart';
import 'package:app_flutter/utils/app_layout.dart';
import 'package:app_flutter/widgets/Tab_widget.dart';
import 'package:app_flutter/screens/tickets_view.dart';
import 'package:app_flutter/utils/app_info_list.dart';
import 'package:app_flutter/widgets/Column_widget.dart';
import 'package:gap/gap.dart';
import 'package:app_flutter/widgets/dash_widget.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10), vertical: AppLayout.getHeight(40)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.headLineStyle2.copyWith(color: Colors.black, fontSize: AppLayout.getHeight(35)),),
              Gap(AppLayout.getHeight(25)),
              const TabWidget(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayout.getHeight(15)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getWidth(15), right: AppLayout.getWidth(25)),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(26)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                         Column_Widget(textOne: "Flutter DB", textTwo: "Passenger", alignment: CrossAxisAlignment.start, isColor: true,),
                         Column_Widget(textOne: "5723958294", textTwo: "Passport", alignment: CrossAxisAlignment.end, isColor: true),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const DashWidget(width: 2, section: 8, isColor: true,),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                         Column_Widget(textOne: "0055 999 77123", textTwo: "Number of E-ticket", alignment: CrossAxisAlignment.start, isColor: true),
                         Column_Widget(textOne: "B5WS78", textTwo: "Booking code", alignment: CrossAxisAlignment.end, isColor: true),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const DashWidget(width: 2, section: 8, isColor: true,),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.credit_card, size: 28,),
                                Text(" **** 5978", style: Styles.headLineStyle3.copyWith(color: Colors.black54),)
                              ],
                            ),
                            Row(
                              children: [
                                Text("Payment method", style: Styles.headLineStyle4.copyWith(color: Colors.black26),)
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: const [
                                Column_Widget(textOne: '\$249.99', textTwo: 'Price', alignment: CrossAxisAlignment.end, isColor: true,)
                              ],
                            )

                          ],
                        )
                      ],
                    ),

                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(AppLayout.getHeight(20)),
                  bottomLeft: Radius.circular(AppLayout.getHeight(20)))
                ),
                margin: EdgeInsets.only(left: AppLayout.getHeight(26), right: AppLayout.getHeight(26)),
                padding: EdgeInsets.only(top: AppLayout.getHeight(15), bottom: AppLayout.getHeight(25)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                    data: '', barcode: Barcode.code128(),
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getWidth(15), right: AppLayout.getWidth(25)),
                child: TicketView(ticket: ticketList[0],),
              )
            ],
          ),
          Positioned(
              left: AppLayout.getHeight(25),
              top: AppLayout.getHeight(380),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 3)
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              )
          ),
          Positioned(
              right: AppLayout.getHeight(25),
              top: AppLayout.getHeight(380),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 3)
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              )
          ),
        ],
      )
    );
  }
}
