import 'package:flutter/material.dart';

class ThickContaniner extends StatelessWidget {
  const ThickContaniner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5,color: Colors.white),
      ),
    );
  }
}
