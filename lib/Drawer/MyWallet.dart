import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nictus_seller/AppColor.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.kBlue,
        title: const Center(
          child: Text('My Wallet',
              style: TextStyle(fontFamily: 'poppins',fontSize: 16, color: AppColor.kWhite, fontWeight: FontWeight.w700)),
        ),
        actions: [
          Icon(Icons.notifications_none_outlined),
          SizedBox(width: 12,)
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*.3,),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0, right: 12),
                    child: Text('Transaction History',
                        style: TextStyle(fontFamily: 'poppins',fontSize: 16, color: AppColor.kBlack, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 3,
                        itemBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 20.0, bottom: 20, right: 20),
                        child: Container(
                          height: 142,
                          width: MediaQuery.of(context).size.width*.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: AppColor.kWhite,
                              boxShadow: [
                                BoxShadow(
                                    color: AppColor.kLight.withOpacity(.3),
                                    blurRadius: 20,
                                    spreadRadius: 2,
                                  offset: Offset(0,3)
                                )
                              ]
                          ),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(

                                children: [
                                  Container(
                                    height: 31,
                                    width: 141,
                                    decoration: BoxDecoration(
                                        color: AppColor.kBlue,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5))
                                    ),
                                    child: const Center(
                                      child: Text('Amount: \$250',
                                          style: TextStyle(fontFamily: 'poppins',fontSize: 14,
                                              color: AppColor.kWhite, fontWeight: FontWeight.w700)),
                                    ),
                                  ),
                                  SizedBox(width: 30,),
                                  const Text('22-January-2022',
                                      style: TextStyle(fontFamily: 'poppins',fontSize: 12, color: AppColor.kBlue, fontWeight: FontWeight.w500)),
                                ],
                              ),
                              Container(
                                height: 1,
                                color: AppColor.kLight,
                              ),
                              SizedBox(height: 23,),
                              const buildRow(text1: 'Payment ID:', text2: '65484-5412',),
                              SizedBox(height: 10,),
                              const buildRow(text1: 'Type', text2: 'Credit Card',),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0, right: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Status',
                                        style: TextStyle(fontFamily: 'poppins',fontSize: 14, color: AppColor.kMBlack, fontWeight: FontWeight.w700)),
                                    Container(
                                      height: 19,
                                      width: 86,
                                      decoration: const BoxDecoration(
                                          color: AppColor.kGreen,
                                          borderRadius: BorderRadius.all(Radius.circular(12))
                                      ),
                                      child: const Center(
                                        child: Text('Cleared',
                                            style: TextStyle(fontFamily: 'poppins',fontSize: 12, color: AppColor.kWhite, fontWeight: FontWeight.w500)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,)
                            ],
                          ),
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*.25,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColor.kBlue,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
              ),
              child: Column(
                children: [
                  Text('Current Balance',
                  style: TextStyle(fontFamily: 'poppins',fontSize: 16, color: AppColor.kWhite, fontWeight: FontWeight.w500)),
            Text('\$245000000000',
                style: TextStyle(fontFamily: 'poppins',fontSize: 28, color: AppColor.kWhite, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*.22,
              left: MediaQuery.of(context).size.width*.35,
              child: Container(
                height: 44,
                width: 135,
                decoration: BoxDecoration(
                  color: AppColor.kOrange,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: AppColor.kWhite, width: 3)
                ),
                child: const Center(
                  child: Text('Withdraw',
                      style: TextStyle(fontFamily: 'poppins',fontSize: 18, color: AppColor.kWhite, fontWeight: FontWeight.w500)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class buildRow extends StatelessWidget {
  const buildRow({
    Key? key, required this.text1, required this.text2,
  }) : super(key: key);
final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text1,
              style: TextStyle(fontFamily: 'poppins',fontSize: 12, color: AppColor.kMBlack, fontWeight: FontWeight.w700)),
          Text(text2,
              style: TextStyle(fontFamily: 'poppins',fontSize: 12,
                  color: AppColor.kMBlack.withOpacity(0.699999988079071), fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
