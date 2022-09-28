import 'package:flutter/material.dart';

import '../AppColor.dart';

class GradiantButton extends StatelessWidget {
  const GradiantButton({Key? key, required this.ontap, required this.text, }) : super(key: key);
  final Function() ontap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 40,
          width: 301,
          decoration:  const BoxDecoration(
              color: AppColor.kBlack,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              gradient: LinearGradient(begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColor.kBlue,
                    AppColor.kDarkBlue,
                  ])
          ),
          child: Center(
            child: Text(text,
              style: const TextStyle(fontFamily: 'khand', fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
