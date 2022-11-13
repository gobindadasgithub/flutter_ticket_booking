import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/sceens/hotel_scrren.dart';
import 'package:ticket_booking/sceens/ticket_view.dart';
import 'package:ticket_booking/utils/app_info_list.dart';

import '../utils/app_styles.dart';

class HomeSceen extends StatelessWidget {



  const HomeSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Styles.bgcolor,
      body: ListView(
        children: [
          Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text('Good Morning',style: Styles.hendlineStyle3),
                     const Gap(5),
                     Text('Book Tickets',style: Styles.hendlineStyle1,),
                  ],
                ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                          "assets/images/img.png"
                        )

                      )
                    ),

                  )
                ],
              ),
              const Gap(25),
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF4F6FD),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                child: Row(
                  children:  [
                   const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC2055),),
                    Text('Search',style: Styles.hendlineStyle4,)

                  ],
                ),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Upcomeing Flights',style: Styles.hendlineStyle2,),
                  InkWell(
                    onTap: (){

                    },
                      child:Text('View All', style: Styles.textStyle.copyWith(color: Styles.primaryColor),)),
                ],
              )
            ],

          ),
        ),
          const Gap(15),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           padding:const EdgeInsets.only(left: 20),
           child: Row(
             children: ticketList.map((singleTicket) =>TicketView(ticket: singleTicket)).toList(),
           ),
         ),
          const Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hotelss',style: Styles.hendlineStyle2,),
                InkWell(
                    onTap: (){

                    },
                    child:Text('View All', style: Styles.textStyle.copyWith(color: Styles.primaryColor),)),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding:const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((singleHotel) =>HotelScreen(hotel: singleHotel)).toList(),

            ),

          )


        ],


      ),
    );
  }
}
