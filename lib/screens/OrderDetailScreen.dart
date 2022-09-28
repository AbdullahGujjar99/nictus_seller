import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AppColor.dart';
import '../Widgets/OrderDetailWidget.dart';
import '../Widgets/ProductWidget.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({Key? key}) : super(key: key);

  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  String? dropdownValue;
  String? dropdownValue2;
  var list = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
        return <Widget>[
          SliverAppBar(
            elevation: 0,
            pinned: true,
            floating: true,
            expandedHeight: MediaQuery.of(context).size.height*.02,

            flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: SafeArea(child: Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: Text('Order Detail',
                      style: TextStyle(fontFamily: 'poppins', fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),),
                  ),
                ),
                )
            ),
            //ICON ICON
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Image.asset('assets/images/arrow.png'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            actions: const <Widget>[
              Icon(Icons.notifications_none_outlined, color: AppColor.kBlue,),
              SizedBox(width: 12)//IconButton
            ],
          ),


        ];
      },
          body: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 236,
                        width: MediaQuery.of(context).size.width*.92,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: AppColor.kBlue
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: 40,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Order Date:',
                                    style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w600, color: AppColor.kWhite),),
                                  Text('25-02-2022',
                                    style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500,
                                        color: AppColor.kWhiteOpc),),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Payment Method',
                                    style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500,
                                        color: AppColor.kWhite),),
                                  Text('COD',
                                    style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500,
                                        color: AppColor.kWhiteOpc),),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(
                                    width: 144,
                                    child: Text('Preferred Delivery Date: ', overflow: TextOverflow.ellipsis, maxLines: 2,
                                      style: TextStyle(fontFamily: 'poppins', fontSize: 14, fontWeight: FontWeight.w500,
                                          color: AppColor.kWhite),),
                                  ),
                                  Text('22-January-2022',
                                    style: TextStyle(fontFamily: 'poppins', fontSize: 14, fontWeight: FontWeight.w500,
                                        color: AppColor.kWhiteOpc),),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(
                                    width: 144,
                                    child: Text('Preferred Delivery Time: ', overflow: TextOverflow.ellipsis, maxLines: 2,
                                      style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500,
                                          color: AppColor.kWhite),),
                                  ),
                                  Text('09:00 AM-12:30 PM',overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500,
                                        color: AppColor.kWhiteOpc),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: -5,
                        child: Container(
                          height: 39,
                          width: 152,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/banner.png"
                                  ),
                                  fit: BoxFit.fill
                              )
                          ),
                          child: const Center(
                            child: Text('Order # N524d',
                              style: TextStyle(fontFamily: 'poppins', fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Text('Products ',
                    style: TextStyle(fontFamily: 'poppins', fontSize: 18, fontWeight: FontWeight.bold,
                        color: AppColor.kBlack),),
                  ProductWidget(onsale: false, dis: 'Modern ladies casual bag', img: 'bag', dropdownValue: dropdownValue,
                    onchange: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    }, list: list.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40, top: 18, bottom: 18),
                    child: Container(
                      height: 1,
                      color: AppColor.kLight,
                    )
                  ),
                  ProductWidget(onsale: true, dis: 'Modern lounge chair', img: 'chair', dropdownValue: dropdownValue,
                    onchange: (String? newValue) {
                      setState(() {
                        dropdownValue2 = newValue!;
                      });
                    }, list: list.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 10,),
                  OrderDetailWidget(context: context, text: '', img: '', visible: false)
                ],
      ),
            ),
          )
      ),
    );
  }
}
