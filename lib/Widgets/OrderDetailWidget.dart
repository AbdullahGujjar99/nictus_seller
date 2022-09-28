import 'package:flutter/material.dart';

import '../AppColor.dart';
import '../screens/OrderDetailScreen.dart';

class OrderDetailWidget extends StatelessWidget {
  const OrderDetailWidget({
    Key? key,
    required this.context, required this.text, required this.img, required this.visible,
  }) : super(key: key);

  final BuildContext context;
  final String text;
  final String img;
  final bool visible;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        visible == true? Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDetail())): null;
      },
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 236,
                width: MediaQuery.of(context).size.width*.92,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                        color: AppColor.kLight,
                        width: 2
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16,),
                      Visibility(
                        visible: visible== false,
                        child: const Text('Shopping Detail',
                          style: TextStyle(fontFamily: 'poppins', fontSize: 14,
                              fontWeight: FontWeight.bold, color: AppColor.kBlack),),
                      ),
                      Visibility(
                        visible: visible== true,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Customers Info',
                              style: TextStyle(fontFamily: 'poppins', fontSize: 16,
                                  fontWeight: FontWeight.bold, color: AppColor.kBlack),),
                            Text('25-02-2022',
                              style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.kBlue),),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Name',
                            style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.kBlack),),
                          Text('John Doe',
                            style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.kBlack.withOpacity(0.699999988079071)),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Phone #',
                            style: TextStyle(fontFamily: 'poppins', fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.kBlack),),
                          Text('+923005698741',
                            style: TextStyle(fontFamily: 'poppins', fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.kBlack.withOpacity(0.699999988079071)),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Address',
                            style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.kBlack),),
                          Text('658 Ashley Street \nMiddletown, CT 06457', textAlign: TextAlign.right,
                            style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500,
                                color: visible==false? AppColor.kBlue:AppColor.kBlack.withOpacity(0.699999988079071)),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Cash On Delivery',
                            style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.kBlack),),
                          Text('\$250',
                            style: TextStyle(fontFamily: 'poppins', fontSize: 18, fontWeight: FontWeight.bold, color: AppColor.kBlue),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: visible==true,
                child: Positioned(
                  left: -2,
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
              ),
              Visibility(
                visible: visible== true,
                child: Positioned(
                  right: -2,
                  child: Container(
                    height: 39,
                    width: 152,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/$img.png"
                            ),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Center(
                      child: Text('$text',
                        style: TextStyle(fontFamily: 'poppins', fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}