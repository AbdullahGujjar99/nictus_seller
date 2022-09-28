import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:nictus_seller/AppColor.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../package/AnimatedToggle.dart';


class StoreSetting extends StatefulWidget {
  const StoreSetting({Key? key}) : super(key: key);

  @override
  _StoreSettingState createState() => _StoreSettingState();
}

class _StoreSettingState extends State<StoreSetting> {
  String? dropdownvalue;
  int toggleValue = 0;
  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  HtmlEditorController controller = HtmlEditorController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.kWhite,
        iconTheme: const IconThemeData(
          color: AppColor.kBlue
        ),
        title: const Center(
          child: Text('Store Setting',
              style: TextStyle(fontFamily: 'poppins',fontSize: 14,
                  color: AppColor.kBlack, fontWeight: FontWeight.w500)),
        ),
        actions: const [
          Icon(Icons.notifications_none_outlined, color: AppColor.kBlue,),
          SizedBox(width: 12,)
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Store Setting',
                    style: TextStyle(fontFamily: 'poppins',fontSize: 18,
                        color: AppColor.kBlack, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextFields(width: 165, hint: 'Enter', heading: 'Store Name',),
                    TextFields(width: 165, hint: 'Enter', heading: 'Store Headline',),

                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropDownButton( width: 165, heading: 'Store Country',
                      button: DropdownButton(
                        isExpanded: true,
                        // Initial Value
                        value: dropdownvalue,
                        hint: const Text('Select',
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
                      ),),
                    DropDownButton( width: 165, heading: 'Store State',
                      button: DropdownButton(
                        isExpanded: true,
                        // Initial Value
                        value: dropdownvalue,
                        hint: const Text('Select',
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
                      ),),
                  ],
                ),
                const SizedBox(height: 10,),
                DropDownButton( width: MediaQuery.of(context).size.width, heading: 'Store City',
                  button: DropdownButton(
                    isExpanded: true,
                    // Initial Value
                    value: dropdownvalue,
                    hint: const Text('Select',
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
                  ),),
                const SizedBox(height: 10,),
                TextFields(width: MediaQuery.of(context).size.width, hint: 'Enter', heading: 'Store Address',),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextFields(width: 165, hint: 'Enter', heading: 'Store Phone',),
                    TextFields(width: 165, hint: 'Enter', heading: 'Store Postal Code',),
                    //SizedBox(width: 8,),
                  ],
                ),
                const SizedBox(height: 18,),
                const ImageBox(text: 'Logo Image',),
                const SizedBox(height: 18,),
                const ImageBox(text: 'Cover Image',),
                const SizedBox(height: 18,),
                Container(
                  height: MediaQuery.of(context).size.height*.3,
                  width: MediaQuery.of(context).size.width*.9,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.kLight
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,left: 16.0, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Category (Max2)',
                              style: TextStyle(fontFamily: 'poppins',fontSize: 14,
                                  color: AppColor.kBlack, fontWeight: FontWeight.w600)),
                          DropDownButton( width: MediaQuery.of(context).size.width, heading: 'Store City',
                            button: DropdownButton(
                              isExpanded: true,
                              // Initial Value
                              value: dropdownvalue,
                              hint: const Text('Category 1',
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
                            ),),
                          const SizedBox(height: 18,),
                          DropDownButton( width: MediaQuery.of(context).size.width, heading: 'Store City',
                            button: DropdownButton(
                              isExpanded: true,
                              // Initial Value
                              value: dropdownvalue,
                              hint: const Text('Category 2',
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
                            ),),
                      ]
                    ),
                  )
                ),
                const SizedBox(height: 18),
                ToggleSwitch(
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  minWidth: 100.0,
                  minHeight: 33.0,
                  labels: const ['English', 'Arabic'],
                  inactiveBgColor: AppColor.kLight.withOpacity(.6),
                  inactiveFgColor: AppColor.kLightBlack,
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                Container(
                  height: 417,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.kLight),
                    borderRadius: const BorderRadius.all(const Radius.circular(8)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 18),
                          const Text('Description',
                              style: TextStyle(fontFamily: 'poppins',fontSize: 18,
                                  color: AppColor.kBlack, fontWeight: FontWeight.w500)),
                        SingleChildScrollView(
                          child: HtmlEditor(
                            controller: controller, //required
                            htmlToolbarOptions: const HtmlToolbarOptions(
                                defaultToolbarButtons: [
                                  //add constructors here and set buttons to false, e.g.
                                  StyleButtons(),
                                  FontSettingButtons(fontSizeUnit: false),
                                  FontButtons(), ColorButtons(),
                                  InsertButtons(),
                                  ParagraphButtons(lineHeight: true, caseConverter: true)
                                ]
                            ),
                            htmlEditorOptions: const HtmlEditorOptions(
                              shouldEnsureVisible: true,
                              hint: "Your text here...",

                            ),
                            otherOptions: const OtherOptions(
                              decoration: BoxDecoration(

                              ),
                                height: 400,
                            ),
                          ),
                        ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageBox extends StatelessWidget {
  const ImageBox({
    Key? key, required this.text,
  }) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DottedBorder(
        color: AppColor.kBlue,//color of dotted/dash line
        strokeWidth: 2, //thickness of dash/dots
        dashPattern: const [8,8],
        borderType: BorderType.RRect,
        radius: const Radius.circular(10),
        child: Container(
          height: 69,
          width: MediaQuery.of(context).size.width*.6,
          decoration: const BoxDecoration(
            color: AppColor.kImgBlue,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Column(
            children: [
              IconButton(onPressed: (){},
                  icon: Image.asset('assets/images/gallery.png')),
              Text(text,
                  style: TextStyle(fontFamily: 'poppins',fontSize: 12,
                      color: AppColor.kMBlack.withOpacity(0.6100000143051147), fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  const TextFields({
    Key? key, required this.heading, required this.hint, required this.width,
  }) : super(key: key);
final String heading;
final String hint;
final double? width;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(heading,
            style: const TextStyle(fontFamily: 'poppins',fontSize: 14,
                color: AppColor.kBlack, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 37,
          width: width,
          child: TextField(
            onChanged: (value){},
            decoration: InputDecoration(
              hintText: hint,
              border: const OutlineInputBorder(

              )
            ),
          ),
        )
      ],
    );
  }
}

class DropDownButton extends StatelessWidget {
  const DropDownButton({
    Key? key, required this.heading, required this.width, required this.button,
  }) : super(key: key);
  final String heading;
  final double? width;
  final Widget button;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(heading,
            style: const TextStyle(fontFamily: 'poppins',fontSize: 14,
                color: AppColor.kBlack, fontWeight: FontWeight.w500)),
        Container(
          height: MediaQuery.of(context).size.height*.06,
          width: width,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(const Radius.circular(5)),
              border: Border.all(color: AppColor.kLight)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: button,
          )
        )
      ],
    );
  }
}