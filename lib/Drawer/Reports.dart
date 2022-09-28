import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AppColor.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  var items = [
    'status 1',
    'status 2'
  ];
  String? dropdownvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.kWhite,
        iconTheme: const IconThemeData(
          color: AppColor.kBlue,
        ),
        title: const Center(
          child: Text('Reports',
              style: TextStyle(fontFamily: 'poppins',fontSize: 14,
                  color: AppColor.kBlack, fontWeight: FontWeight.w500)),
        ),
        actions: const [
          Icon(Icons.notifications_none_outlined,color: AppColor.kBlue,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Column(
          children: [
            const SizedBox(height: 10,),
            const CupertinoSearchTextField(
                borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReportContainer(text: 'Start',),
                ReportContainer(text: 'End',),
                Container(
                  height: 27,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.kLight)
                  ),
                  child: DropdownButton(
                    //isExpanded: true,
                    // Initial Value
                    value: dropdownvalue,
                    hint: const Text('Status',
                        style: TextStyle(fontFamily: 'poppins',fontSize: 12,
                            color: AppColor.kBlue, fontWeight: FontWeight.w500)),
                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                  itemBuilder: (BuildContext context, int index){
                return Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    height: MediaQuery.of(context).size.width*.52,
                    width: MediaQuery.of(context).size.width*.95,
                    decoration: BoxDecoration(
                        color: AppColor.kWhite,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: AppColor.kLight.withOpacity(.4),
                              blurRadius: 10,
                              spreadRadius: 2,
                            offset: const Offset(0,3)
                          ),
                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(height: 10,),
                          Text.rich(
                            TextSpan(
                                text: 'Order #   ',
                                style: const TextStyle(fontFamily: 'poppins', fontSize: 14, fontWeight: FontWeight.bold,
                                    color: AppColor.kBlue),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: '367363837873',
                                    style: TextStyle(fontFamily: 'poppins', fontSize: 12,
                                        fontWeight: FontWeight.w500, color: AppColor.kBlack.withOpacity(.7)),
                                  ),
                                ]
                            ),
                          ),
                          const ReportWidget(text1: 'Customer Name', text2: 'Status', text3: 'Payment Method',
                            color1: AppColor.kLightBlack, color2: AppColor.kLightBlack,color3: AppColor.kLightBlack,),
                          const ReportWidget(text1: 'Ahsan', text2: 'Pending', text3: 'Credit Card',
                            color1: AppColor.kBlack, color2: AppColor.kOrange,color3: AppColor.kBlack,),
                          const ReportWidget(text1: 'SubTotal', text2: 'Shipping', text3: 'Coupon Account',
                            color1: AppColor.kLightBlack, color2: AppColor.kLightBlack,color3: AppColor.kLightBlack,),
                          const ReportWidget(text1: '\$110', text2: '\$10', text3: '\$50',
                            color1: AppColor.kBlack, color2: AppColor.kBlack,color3: AppColor.kBlack,),
                          const Text('Total',
                              style: TextStyle(fontFamily: 'poppins',fontSize: 10,
                                  color: AppColor.kLightBlack, fontWeight: FontWeight.w500)),
                          const Text('\$120',
                              style: TextStyle(fontFamily: 'poppins',fontSize: 10,
                                  color: AppColor.kBlue, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

class ReportWidget extends StatelessWidget {
  const ReportWidget({
    Key? key, required this.text1, required this.text2, required this.text3, required this.color1, required this.color2, required this.color3,
  }) : super(key: key);
final String text1;
  final String text2;
  final String text3;
  final Color color1;
  final Color color2;
  final Color color3;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text1,
          style: TextStyle(fontFamily: 'poppins', fontSize: 10, fontWeight: FontWeight.w500,
              color: color1),),
        Text(text2,
          style: TextStyle(fontFamily: 'poppins', fontSize: 10, fontWeight: FontWeight.w500,
              color: color2),),
        Text(text3,
          style: TextStyle(fontFamily: 'poppins', fontSize: 10, fontWeight: FontWeight.w500,
              color: color3),),
      ],
    );
  }
}

class ReportContainer extends StatelessWidget {
  ReportContainer({
    Key? key, required this.text,
  }) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.kLight)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(Icons.calendar_today_outlined, color: AppColor.kBlue, size: 15,),
      Text('$text Date',
          style: const TextStyle(fontFamily: 'poppins',fontSize: 12,
              color: AppColor.kBlue, fontWeight: FontWeight.w500)),
        ],
      )
    );
  }
}
