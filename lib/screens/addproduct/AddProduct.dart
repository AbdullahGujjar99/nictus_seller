import 'package:flutter/material.dart';

import '../../AppColor.dart';

class AddProducts extends StatefulWidget {
  const AddProducts({Key? key}) : super(key: key);

  @override
  _AddProductsState createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.kWhite,
        iconTheme: const IconThemeData(
          color: AppColor.kBlue
        ),
        title: Center(
          child: Text('Add Product',
              style: TextStyle(fontFamily: 'poppins',fontSize: 14,
                  color: AppColor.kBlack, fontWeight: FontWeight.w600)),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 45,
                width: 98,
                decoration: BoxDecoration(
                  color: AppColor.kWhite,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.kLight.withOpacity(.3),
                      blurRadius: 20,
                      offset: Offset(0, 3)
                    )
                  ]
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
