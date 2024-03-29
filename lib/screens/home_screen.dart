import 'package:flutter/material.dart';
import 'package:app_flutter/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:app_flutter/screens/tickets_view.dart';
import 'package:app_flutter/screens/hotels_view.dart';
import 'package:app_flutter/utils/app_info_list.dart';
import 'package:app_flutter/utils/app_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: Styles.headLineStyle3),
                        const Gap(5),
                        Text("Book Tickets", style: Styles.headLineStyle),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/img_5.png")
                        )
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                  children: [
                    const Icon(
                      Icons.search_sharp,
                      color: Colors.grey,
                    ),
                    Text("Search", style: Styles.headLineStyle4,)
                  ],
                  )
                ),
                const Gap(25),
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
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: ticketList.map((ticketData) => TicketView(ticket: ticketData)).toList()
            ),
          ),
          const Gap(10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hotels", style: Styles.headLineStyle2,),
                  InkWell(
                    onTap: (){
                      //print("You are tapped");
                    },
                    child: Text("View All", style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
                  )
                ]
            ),
          ),
          const Gap(10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: hotelList.map((singleHotel) => HotelsScreen(hotel: singleHotel)).toList()
            )
          )
        ],
      ),
    );
  }
}
