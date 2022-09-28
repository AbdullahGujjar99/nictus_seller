import 'package:flutter/material.dart';

import '../AppColor.dart';
import '../Widgets/GridBuilder.dart';
import '../Widgets/OrderDetailWidget.dart';

enum WidgetMaker{
  received, delivered, processing,shipped,cancelled
}

class SellerOrders extends StatefulWidget {
  const SellerOrders({Key? key}) : super(key: key);

  @override
  _SellerOrdersState createState() => _SellerOrdersState();
}

class _SellerOrdersState extends State<SellerOrders> {
  WidgetMaker selectedWidget = WidgetMaker.received;
  List<String> litems = ["Received","Received","Processing","Shipped", "Cancelled",];
  List<String> img = ["rb","rb","pb","sb", "cb"];
  var map = Map();
  itemcount(){
    litems.forEach((element) {
      if(!map.containsKey(element)) {
        map[element] = 1;
      } else {
        map[element] += 1;
      }
    });
    print(map);
  }
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    itemcount();
    super.initState();
  }
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
                    child: Text('Orders',
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
              Icon(Icons.notifications_none_outlined, color: AppColor.kBlue,), //IconButton
            ],
          ),


        ];
      }, body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    GridBuilder(text1: 'Received', height: 83, width: MediaQuery.of(context).size.width*.45,
                      img: 'assets/images/receive.png', text2: '950', color: AppColor.kGreen,),
                    const SizedBox(height: 10,),
                    GridBuilder(text1: 'Shipped', height: 83, width: MediaQuery.of(context).size.width*.45,
                      img: 'assets/images/ship.png', text2: '23', color: AppColor.kBlue,),
                    const SizedBox(height: 10,),
                    GridBuilder(text1: 'Cancelled', height: 83, width: MediaQuery.of(context).size.width*.45,
                      img: 'assets/images/sold.png', text2: '85', color: AppColor.kRed,)
                  ],
                ),
                //SizedBox(width: 10,),
                Column(
                  children: [
                    GridBuilder(text1: 'Processing', height: 83, width: MediaQuery.of(context).size.width*.45,
                      img: 'assets/images/more.png', text2: '50', color: AppColor.kOrange,),
                    const SizedBox(height: 10,),
                    GridBuilder(text1: 'Delivered', height: 83, width: MediaQuery.of(context).size.width*.45,
                      img: 'assets/images/deliver.png', text2: '65', color: AppColor.kGreen,),
                    const SizedBox(height: 10,),
                    GridBuilder(text1: 'Returned', height: 83, width: MediaQuery.of(context).size.width*.45,
                      img: 'assets/images/return.png', text2: '56', color: AppColor.kRed,),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(onPressed: (){
                    setState(() {
                      index = 0;
                      selectedWidget = WidgetMaker.received;
                    });
                  }, child: Text('Received',
                    style: TextStyle(fontFamily: 'poppins', fontSize: 16, fontWeight: FontWeight.w600,
                        color: index == 0 ?AppColor.kBlue: AppColor.kLight),),),
                  TextButton(onPressed: (){
                    setState(() {
                      index = 1;
                      print(map["Delivered"]);
                      selectedWidget = WidgetMaker.delivered;
                    });
                  }, child: Text('Delivered',
                    style: TextStyle(fontFamily: 'poppins', fontSize: 16, fontWeight: FontWeight.w600,
                        color:index == 1 ?AppColor.kBlue: AppColor.kLight),),),
                  TextButton(onPressed: (){
                    setState(() {
                      index = 2;
                      selectedWidget = WidgetMaker.processing;
                    });
                  }, child: Text('Processing',
                    style: TextStyle(fontFamily: 'poppins', fontSize: 16, fontWeight: FontWeight.w600,
                        color: index == 2 ?AppColor.kBlue: AppColor.kLight),),),
                  TextButton(onPressed: (){
                    setState(() {
                      index =3;
                      selectedWidget = WidgetMaker.shipped;
                    });
                  }, child: Text('Shipped',
                    style: TextStyle(fontFamily: 'poppins', fontSize: 16, fontWeight: FontWeight.w600,
                        color: index == 3 ?AppColor.kBlue: AppColor.kLight),),),
                  TextButton(onPressed: (){
                    setState(() {
                      index =4;
                      selectedWidget = WidgetMaker.cancelled;
                    });
                  }, child: Text('Cancelled',
                    style: TextStyle(fontFamily: 'poppins', fontSize: 16, fontWeight: FontWeight.w600,
                        color: index == 4 ?AppColor.kBlue: AppColor.kLight),),),
                ],
              ),
            ),
            const Divider(height: 1,),
            const SizedBox(height: 10,),
            CustomWidget(),
          ],
        ),
      ),
      ),
    );
  }
  CustomWidget() {
    switch(selectedWidget){
      case WidgetMaker.received:
        return receivedWidget();
      case WidgetMaker.delivered:
        return deliveredWidget();
      case WidgetMaker.processing:
        return processingWidget();
      case WidgetMaker.shipped:
        return shippedWidget();
      case WidgetMaker.cancelled:
        return cancelledWidget();
    }
  }

  receivedWidget() {
    return Expanded(
      child: ListView.builder
        (
          itemCount: map["Received"],
          itemBuilder: (BuildContext ctxt, int index) {
            return OrderDetailWidget(context: context, img: 'rb', text: 'Received', visible: true,);
          }
      ),
    );
  }
//Delivered
  deliveredWidget() {
    return Expanded(
      child: ListView.builder
        (
          itemCount: map["Delivered"]== null? 0:  map["Delivered"],
          itemBuilder: (BuildContext ctxt, int index) {
            return OrderDetailWidget(context: context, img: 'rb', text: 'Delivered', visible: true,);
          }
      ),
    );
  }

  processingWidget() {
    return Expanded(
      child: ListView.builder
        (
          itemCount: map["Processing"],
          itemBuilder: (BuildContext ctxt, int index) {
            return OrderDetailWidget(context: context, img: 'pb', text: 'Processing', visible: true,);
          }
      ),
    );
  }

  shippedWidget() {
    return Expanded(
      child: ListView.builder
        (
          itemCount: map["Shipped"],
          itemBuilder: (BuildContext ctxt, int index) {
            return OrderDetailWidget(context: context, img: 'pb', text: 'Shipped', visible: true,);
          }
      ),
    );
  }

  cancelledWidget() {
    return Expanded(
      child: ListView.builder
        (
          itemCount: map["Cancelled"],
          itemBuilder: (BuildContext ctxt, int index) {
            return OrderDetailWidget(context: context, img: 'cb', text: 'Cancelled', visible: true,);
          }
      ),
    );
  }
}


