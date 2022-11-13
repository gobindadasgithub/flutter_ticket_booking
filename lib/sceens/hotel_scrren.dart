import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_info_list.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const HotelScreen({Key? key,required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // print('Hotel Price is ${hotelList['price']}');//

    final size=AppLayout.getSize(context);

    return Container(
      width: size.width*0.6,
      height: 350,
padding: EdgeInsets.symmetric(horizontal: 15,vertical: 17),
margin: EdgeInsets.only(right: 17,top: 5),
decoration: BoxDecoration(
  color: Styles.orangecolor,
  borderRadius: BorderRadius.circular(24),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.shade200,
      blurRadius: 15,
      spreadRadius: 5
    )
  ]
),
child: Column(
  children: [
    Container(
      height: 100,
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        image: DecorationImage(
          image: AssetImage(
            "assets/images/${hotel['image']}"
          )
        )
      ),

    ),
    const Gap(10),
    Text(hotel['place'],style: Styles.hendlineStyle2.copyWith(color: Styles.kikicolor),),
    const Gap(5),
    Text(hotel['destination'],style: Styles.hendlineStyle3.copyWith(color: Colors.white),),
    const Gap(8),
    Text('\$${hotel['place']}/night',style: Styles.hendlineStyle1.copyWith(color: Styles.kikicolor),),






  ],
),

    );
  }
}
