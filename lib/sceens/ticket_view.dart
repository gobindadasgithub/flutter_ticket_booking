import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widghts/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  const TicketView({Key? key, required this.ticket,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return SizedBox(
      width:size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [

            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21)),

              ),
              padding:  const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],style: Styles.hendlineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      ThickContaniner(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(

                              builder: (BuildContext , BoxConstraints ) {

                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(6.floor(), (index) => SizedBox(
                                    height: 1,
                                    width: 3,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )),




                                );
                              },

                            ),

                          ),
                        ]
                      )),
                      Center(child: Transform.rotate(angle: 1.5,child: Icon(Icons.local_airport_rounded,color: Colors.white,))),
                      ThickContaniner(),
                      Expanded(child: Container(

                      )),
                      Text(ticket['to']['code'],style: Styles.hendlineStyle3.copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(ticket['from']['name'],style: Styles.hendlineStyle4.copyWith(color: Colors.white)),
                      ),
                      Text(ticket['flying_time'],style: Styles.hendlineStyle3.copyWith(color: Colors.white)),
                      SizedBox(
                        width: 100,
                        child: Text(ticket['from']['name'],textAlign: TextAlign.end, style: Styles.hendlineStyle4.copyWith(color: Colors.white)),
                      ),

                    ],
                  )
                ],
              ),
            ),

            Container(
              color: Styles.orangecolor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),bottomRight: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(builder: (BuildContext , BoxConstraints ) {

                      return  Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children:List.generate(15.floor(), (index) => SizedBox(
                          width: 5,
                          height: 1,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ))

                        ,
                      );

                    },

                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Styles.orangecolor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21)),

              ),
              padding:  const EdgeInsets.only(left: 16,top: 10,right: 16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'],style: Styles.hendlineStyle3.copyWith(color:Colors.white)),
                          const Gap(5),
                          Text(ticket['deaparture_time'],style: Styles.hendlineStyle4.copyWith(color:Colors.white)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('08:00AM',style: Styles.hendlineStyle3.copyWith(color:Colors.white)),
                          const Gap(5),
                          Text('Departure time',style: Styles.hendlineStyle4.copyWith(color:Colors.white)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('23',style: Styles.hendlineStyle3.copyWith(color:Colors.white)),
                          const Gap(5),
                          Text('Number',style: Styles.hendlineStyle4.copyWith(color:Colors.white)),
                        ],
                      ),


                    ],
                  )
                ],
              ),

            )

          ],
        ),
      ),


    );
  }
}
