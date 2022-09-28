import 'package:flutter/material.dart';

import '../../AppColor.dart';

class AddReviews extends StatefulWidget {
  const AddReviews({Key? key}) : super(key: key);

  @override
  _AddReviewsState createState() => _AddReviewsState();
}

class _AddReviewsState extends State<AddReviews> {
  String? dropdownvalue;

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  bool isSwitch = false;
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
          child: Text('Add Reviews',
              style: TextStyle(fontFamily: 'poppins',fontSize: 14,
                  color: AppColor.kBlack, fontWeight: FontWeight.w500)),
        ),
        actions: const [
          Icon(Icons.notifications_none_outlined,color: AppColor.kBlue,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20.0, right: 20),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Add Your Review',
                    style: TextStyle(fontFamily: 'poppins',fontSize: 18,
                        color: AppColor.kBlack, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20,),
                const Text('Customer',
                    style: TextStyle(fontFamily: 'poppins',fontSize: 14,
                        color: AppColor.kBlack, fontWeight: FontWeight.w600)),
                const SizedBox(height: 10,),
                DropDownButton(width: MediaQuery.of(context).size.width,
                    button: DropdownButton(
                      isExpanded: true,
                      // Initial Value
                      value: dropdownvalue,
                      hint: const Text('Select Customer',
                          style: TextStyle(fontFamily: 'poppins',fontSize: 12,
                              color: AppColor.kBlack, fontWeight: FontWeight.w500)),
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                ),
                const SizedBox(height: 20,),
                const Text('Product',
                    style: TextStyle(fontFamily: 'poppins',fontSize: 14,
                        color: AppColor.kBlack, fontWeight: FontWeight.w600)),
                const SizedBox(height: 10,),
                DropDownButton(width: MediaQuery.of(context).size.width,
                  button: DropdownButton(
                    isExpanded: true,
                    // Initial Value
                    value: dropdownvalue,
                    hint: const Text('Select Product',
                        style: TextStyle(fontFamily: 'poppins',fontSize: 12,
                            color: AppColor.kBlack, fontWeight: FontWeight.w500)),
                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Status',
                            style: TextStyle(fontFamily: 'poppins',fontSize: 14,
                                color: AppColor.kBlack, fontWeight: FontWeight.w600)),
                        const SizedBox(height: 10,),
                        DropDownButton(width: MediaQuery.of(context).size.width*.4,
                          button: DropdownButton(
                            isExpanded: true,
                            // Initial Value
                            value: dropdownvalue,
                            hint: const Text('Select Customer',
                                style: TextStyle(fontFamily: 'poppins',fontSize: 12,
                                    color: AppColor.kBlack, fontWeight: FontWeight.w500)),
                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Raiting',
                              style: TextStyle(fontFamily: 'poppins',fontSize: 14,
                                  color: AppColor.kBlack, fontWeight: FontWeight.w600)),
                          const SizedBox(height: 10,),
                          TextField(
                            onChanged: (value){},
                            decoration: InputDecoration(
                              hintText: 'Review Rating',labelStyle: const TextStyle(
                                fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.kLightBlack
                            ),
                                //isDense: true,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              constraints: const BoxConstraints.tightFor(height: 40),
                              )
                            ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                const Text('Review',
                    style: TextStyle(fontFamily: 'poppins',fontSize: 14,
                        color: AppColor.kBlack, fontWeight: FontWeight.w600)),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 66,
                  child: TextField(
                    onChanged: (value){},
                    decoration: const InputDecoration(
                        hintText: 'Review',labelStyle: TextStyle(
                        fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.kLightBlack
                    ),
                        //isDense: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(),

                        ),
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.kLightBlack
                            )
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  height: 37,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.kLightBlack),
                    borderRadius: const BorderRadius.all(Radius.circular(5))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Status',
                            style: TextStyle(fontFamily: 'poppins',fontSize: 14,
                                color: AppColor.kBlack, fontWeight: FontWeight.w500)),
                        Switch(value: isSwitch, onChanged: (value){
                          setState(() {
                            isSwitch = value;
                          });
                        },
                          activeColor: AppColor.kGreen,
                          activeTrackColor: AppColor.kLightGreen,
                        )
                      ],
                    ),
                  ),
                ),

                //Bottom Button
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomButton(text: 'Add Review', ontab: () {
        Navigator.pop(context);
      },),
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key, required this.text, required this.ontab,
  }) : super(key: key);
final String text;
final Function() ontab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontab,
      child: Container(
        height: 66,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: AppColor.kBlue,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
        ),
        child: Center(
          child: Text(text,
              style: const TextStyle(fontFamily: 'poppins',fontSize: 16,
                  color: AppColor.kWhite, fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}

class DropDownButton extends StatelessWidget {
  const DropDownButton({
    Key? key, required this.width, required this.button,
  }) : super(key: key);
  final double? width;
  final Widget button;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.06,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColor.kLightBlack),
          borderRadius: const BorderRadius.all(Radius.circular(5))
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: button
      ),
    );
  }
}