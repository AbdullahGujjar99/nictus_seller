import 'package:flutter/material.dart';

import '../AppColor.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({Key? key,
    required this.dis, required this.onsale, required this.img, required this.dropdownValue, required this.list, required this.onchange}) : super(key: key);
  final String dis;
  final bool onsale;
  final String img;
  String? dropdownValue;
  List<DropdownMenuItem<String>> list;
  final Function(String?) onchange;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 143,
          width: 126,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/$img.png"), fit: BoxFit.cover)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 22,
                    width: 57,
                    color: AppColor.kBlue,
                    child: const Center(
                      child: Text('New',
                        style: TextStyle(fontFamily: 'poppins', fontSize: 10, color: AppColor.kWhite, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Image.asset('assets/images/heart.png'),
                ],
              ),
              SizedBox(height: 9,),
              Visibility(
                visible: onsale == true,
                child: Container(
                  height: 22,
                  width: 57,
                  color: AppColor.kGreen,
                  child: const Center(
                    child: Text('On Sale',
                      style: TextStyle(fontFamily: 'poppins', fontSize: 10, color: AppColor.kBlack, fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(dis,
              style: TextStyle(fontFamily: 'poppins', fontSize: 14, color: AppColor.kLightBlack, fontWeight: FontWeight.bold),),
            RichText(text: const TextSpan(
                text: '★★★★★ ',
                style:
                TextStyle(fontFamily: 'poppins', fontSize: 16, color: AppColor.kOrange, fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(text: ' (150)',
                    style: TextStyle(fontFamily: 'poppins', fontSize: 10, color: AppColor.kLightBlack, fontWeight: FontWeight.bold),)
                ]
            )),
            Row(
              children: [
                Visibility(
                  visible: onsale == true,
                  child: const Text('\$250.00',
                    style: TextStyle(
                      fontFamily: 'poppins', fontSize: 14, color: AppColor.kBlue, fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
                const Text('  \$150.00',
                  style: TextStyle(fontFamily: 'poppins', fontSize: 14, color: AppColor.kLightBlack, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 17,),
            const Text('x2',
              style: TextStyle(fontFamily: 'poppins', fontSize: 14, color: AppColor.kBlack, fontWeight: FontWeight.bold),),
            const SizedBox(height: 15,),
            Container(
              height: 37,
              width: 173,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: AppColor.kBlue,
                ),
                color: AppColor.kDropBlue,
              ),
              child: Center(
                child: DropdownButton<String>(

                  hint: Text('select status',
                    style:
                    TextStyle(fontFamily: 'poppins', fontSize: 12, color: AppColor.kBlue, fontWeight: FontWeight.w600),),

                  // Initial Value
                  value: dropdownValue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down, color: AppColor.kBlue,),

                  // Array list of items
                  items: list,
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: onchange,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 37,
              width: 173,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: AppColor.kBlue,
                ),
                color: AppColor.kDropBlue,
              ),
              child: Center(
                child: DropdownButton<String>(

                  hint: const Text('Delivery Boy',
                    style:
                    TextStyle(fontFamily: 'poppins', fontSize: 12, color: AppColor.kBlue, fontWeight: FontWeight.w600),),

                  // Initial Value
                  value: dropdownValue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down, color: AppColor.kBlue,),

                  // Array list of items
                  items: list,
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: onchange,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
