import 'package:flutter/material.dart';

import '../AppColor.dart';

class GridBuilder extends StatelessWidget {
  GridBuilder({
    Key? key, required this.height, required this.width, required this.img, required this.text1, required this.text2, required this.color,
  }) : super(key: key);

  final double height;
  final double width;
  final String img;
  final String text1;
  final String text2;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$text1',
                  style: TextStyle(fontFamily: 'poppins', fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                Image.asset(img),
              ],
            ),
            Text('$text2',
              style: TextStyle(fontFamily: 'poppins', fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),)
          ],
        ),
      ),
    );
  }
}