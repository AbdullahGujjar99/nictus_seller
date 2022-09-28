import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:nictus_seller/Drawer/MyWallet.dart';

import '../AppColor.dart';
import '../Drawer/Reports.dart';
import '../Drawer/ReviewScreen.dart';
import '../Drawer/Rider.dart';
import '../Drawer/StoreSettingScreen.dart';
import '../Widgets/GridBuilder.dart';
import 'LogIn.dart';
import 'SellerOrdersScreen.dart';
import 'SellerProductScreen.dart';
import 'addproduct/AddProduct.dart';

class SellerDashboard extends StatefulWidget {
  const SellerDashboard({Key? key}) : super(key: key);

  @override
  _SellerDashboardState createState() => _SellerDashboardState();
}

class _SellerDashboardState extends State<SellerDashboard> {
  // List<Color> gradientColors = [
  //   const Color(0xff23b6e6),
  //   const Color(0xff02d39a),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*.06,),
                Row(children: [
                  Image.asset("assets/images/profile.png"),
                  SizedBox(width: MediaQuery.of(context).size.width*.02,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('John Doe',
                          style: TextStyle(fontFamily: 'khand',fontSize: 16, color: AppColor.kBlue, fontWeight: FontWeight.w700)),
                      Text('abc@gmail.com',
                          style: TextStyle(fontFamily: 'khand',fontSize: 12, color: AppColor.kLightBlack, fontWeight: FontWeight.w700)),
                    ],
                  )
                ],),
                const SizedBox(height: 20,),
                const Divider(height: 1, color: AppColor.kLightBlack,),
                const SizedBox(height: 10,),
                DrawerButton(onpress: (){
                  Navigator.pop(context);
                }, titlename: 'Home', img: 'home',),
                const Divider(height: .5, color: AppColor.kLightBlack,),
                const SizedBox(height: 10,),
                DrawerButton(onpress: (){
                  Navigator.pop(context);
                }, titlename: 'Media Liabrary', img: 'home',),
                const Divider(height: .5, color: AppColor.kLightBlack,),
                const SizedBox(height: 10,),
                DrawerButton(onpress: (){
                  Navigator.pop(context);
                }, titlename: 'Product Catalog', img: 'home',),
                const Divider(height: 1, color: AppColor.kLightBlack,),
                const SizedBox(height: 10,),
                DrawerButton(onpress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReviewScreen()));
                }, titlename: 'Orders', img: 'home',),
                const Divider(height: .5, color: AppColor.kLightBlack,),
                const SizedBox(height: 10,),
                DrawerButton(onpress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReportScreen()));
                }, titlename: 'Reports', img: 'home',),
                const Divider(height: .5, color: AppColor.kLightBlack,),
                const SizedBox(height: 10,),
                DrawerButton(onpress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Riders()));
                }, titlename: 'Riders', img: 'home',),
                const Divider(height: .5, color: AppColor.kLightBlack,),
                const SizedBox(height: 10,),
                DrawerButton(onpress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyWallet()));
                }, titlename: 'Wallet', img: 'home',),
                const Divider(height: 2, color: AppColor.kLightBlack,),
                const SizedBox(height: 10,),
                DrawerButton(onpress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const StoreSetting()));
                }, titlename: 'Setting', img: 'home',),
                const Divider(height: .5, color: AppColor.kLightBlack,),
                const SizedBox(height: 20,),
                DrawerButton(onpress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LogInScreen()));
                }, titlename: 'LogOut', img: 'home',),
                const Divider(height: .5, color: AppColor.kLightBlack,),
              ],
            ),
          ),
        ),
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
                  child: Text('Dashboard',
                    style: TextStyle(fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),),
                ),
              ),
              )
          ),
          //ICON ICON
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Image.asset('assets/images/menu.png'),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: const <Widget>[
            Icon(Icons.notifications_none_outlined, color: AppColor.kBlack,),
            SizedBox(width: 12,)//IconButton
          ],
        ),


      ];
    }, body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*.55,
                width: MediaQuery.of(context).size.width*.96,
                decoration: const BoxDecoration(
                  color: AppColor.kBlue,
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      const Text('My Wallet',
                        style: TextStyle(fontFamily: 'poppins', fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),),
                      const Text.rich(TextSpan(
                        text: '\$56,271  ',
                          style: TextStyle(fontFamily: 'poppins', fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                        children: <InlineSpan>[
                          TextSpan(
                            text: '+\$9,736  ',
                              style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          TextSpan(
                            text: '↑2.3%',
                            style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                          )
                        ]
                      ),
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Sales Data',
                            style: TextStyle(fontFamily: 'poppins', fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                          Container(
                            height: MediaQuery.of(context).size.height*.04,
                            width: MediaQuery.of(context).size.width*.3,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(
                                color: Colors.white,
                              )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10),
                              child: Row(
                                children: const [
                                  Icon(Icons.calendar_today_outlined, color: Colors.white,size: 13.15,),
                          Text('  Past 6 months',
                              style: TextStyle(fontFamily: 'poppins', fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*.34,
                        width: 300,
                        child: LineChart(
                            LineChartData(
                                borderData: FlBorderData(
                                    show: true,
                                    border: Border.all(color: AppColor.kBlue , width: 2)
                                ),
                                titlesData: FlTitlesData(
                                  show: true,
                                  bottomTitles: AxisTitles(sideTitles: SideTitles(
                                      showTitles: true,
                                      reservedSize: 35,
                                      // getTextStyles: (context, value) {
                                      //   return const TextStyle(
                                      //       color: Color(0xff68737d),
                                      //       fontSize: 16,
                                      //       fontWeight: FontWeight.bold
                                      //   );
                                      // },
                                      // getTitles: (value) {
                                      //   switch(value.toInt()){
                                      //     case 0 :
                                      //       return 'Sep 19';
                                      //     case 4 :
                                      //       return 'Oct 10';
                                      //     case 8 :
                                      //       return 'Nov 16';
                                      //   }
                                      //   return '';
                                      // },
                                      //margin: 8
                                  ),),
                                  leftTitles: AxisTitles(sideTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 35,
                                    // getTextStyles: (context, value) {
                                    //   return const TextStyle(
                                    //       color: Color(0xff68737d),
                                    //       fontSize: 16,
                                    //       fontWeight: FontWeight.bold
                                    //   );
                                    // },
                                    // getTitles: (value) {
                                    //   switch(value.toInt()){
                                    //     case 0 :
                                    //       return '0';
                                    //     case 2 :
                                    //       return '50';
                                    //     case 4 :
                                    //       return '100';
                                    //     case 6 :
                                    //       return '150';
                                    //   }
                                    //   return '';
                                    // },
                                    //margin: 12,
                                  ),),
                                ),
                                maxX: 8,
                                maxY: 8,
                                minY: 0,
                                minX: 0,
                                lineBarsData: [
                                  LineChartBarData(
                                      spots: [
                                        const FlSpot(0, 7),
                                        const FlSpot(2, 2),
                                        const FlSpot(3, 3),
                                        const FlSpot(4, 2),
                                        const FlSpot(6, 5),
                                        const FlSpot(7, 6),
                                        const FlSpot(8, 4),

                                      ],
                                      isCurved: true,
                                      color: AppColor.kBluelight,
                                      barWidth: 5,
                                      belowBarData: BarAreaData(
                                          show: true,
                                          color: AppColor.kBluelight
                                      )
                                  )
                                ]
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SellerOrders()));
                        },
                        child: GridBuilder(text1: 'Orders', height: 83, width: MediaQuery.of(context).size.width*.45,
                          img: 'assets/images/cart.png', text2: '2500', color: AppColor.kGreen,),
                      ),
                      const SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: GridBuilder(text1: 'Customers', height: 83, width: MediaQuery.of(context).size.width*.45,
                          img: 'assets/images/user.png', text2: '650', color: AppColor.kBlue,),
                      ),
                      const SizedBox(height: 10,),
                      GridBuilder(text1: 'Rating', height: 83, width: MediaQuery.of(context).size.width*.45,
                        img: 'assets/images/rating.png', text2: '4.8', color: AppColor.kOrange,)
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SellerProduct()));
                        },
                        child: GridBuilder(text1: 'Products', height: 83, width: MediaQuery.of(context).size.width*.45,
                          img: 'assets/images/product.png', text2: '250', color: AppColor.kOrange,),
                      ),
                      const SizedBox(height: 10,),
                      GridBuilder(text1: 'Sold Out \nProducts', height: 170, width: MediaQuery.of(context).size.width*.45,
                        img: 'assets/images/sold.png', text2: '1250', color: AppColor.kRed,),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 5),
                child: GridBuilder(text1: 'Low Stock Products', height: 83, width: MediaQuery.of(context).size.width*.95,
                  img: 'assets/images/stock.png', text2: '58', color: AppColor.kPink,),
              ),
              const SizedBox(width: 50,),
            ],
          ),
        ),
      ),
    )
    );
  }
}

class DrawerButton extends StatelessWidget {
  const DrawerButton({
    Key? key, required this.titlename, required this.img, required this.onpress,
  }) : super(key: key);
final String titlename;
final String img;
final Function() onpress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(titlename,
          style: TextStyle(fontFamily: 'khand',fontSize: 16, color: AppColor.kBlack, fontWeight: FontWeight.w700)),
      leading: Image.asset('assets/images/$img.png'),
      onTap: onpress
    );
  }
}


// drawer list

