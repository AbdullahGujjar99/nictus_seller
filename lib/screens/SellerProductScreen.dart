import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nictus_seller/AppColor.dart';

class SellerProduct extends StatefulWidget {
  const SellerProduct({Key? key}) : super(key: key);

  @override
  _SellerProductState createState() => _SellerProductState();
}

class _SellerProductState extends State<SellerProduct> {
  var data = [
    listItems(name: 'Men casual summer shirt', stock: 'In Stock: ', img: 'man', quantity: 58),
    listItems(name: 'Men casual summer shirt', stock: 'Out Of Stock', img: 'bag', quantity: 0),
    listItems(name: 'Modern home decor stand', stock: 'Out Of Stock ', img: 'house', quantity: 0),
    listItems(name: 'Modern lounge chair', stock: 'In Stock: ', img: 'chair', quantity: 100)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kWhite,
        elevation: 0,
        title: const Center(child: Text('Product',
          style: TextStyle(fontFamily: 'poppins', fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),)),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset('assets/images/arrow.png'),
              onPressed: () {
                Navigator.pop(context);
                },
            );
          },
        ),
          actions: const <Widget>[
            Icon(Icons.notifications_none_outlined, color: AppColor.kBlue,),
            SizedBox(width: 12,)//IconButton
          ]
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.search),
                    const SizedBox(width: 16,),
                    const Icon(Icons.filter_alt_outlined),
                    const SizedBox(width: 16,),
                    Image.asset('assets/images/lines.png'),
                    const SizedBox(width: 17,),
                  ],
                ),
                hintText: 'Search here',
              enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: AppColor.kLight, ),
      borderRadius: BorderRadius.circular(5.0),
              ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2, color: AppColor.kLight,),
                ),
            ),
            ),
          ),
          const SizedBox(height: 30,),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
                itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height*.18,
                    width: MediaQuery.of(context).size.width*.9,
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.kLight.withOpacity(.3),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(0,3)
                        )
                      ]
                    ),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                            width: 126,
                            child: Image.asset('assets/images/${data[index].img}.png', fit: BoxFit.fill,)),
                        const SizedBox(width: 15,),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12,),
                            SizedBox(
                              height: 37,
                              width: 142,
                              child: Text(data[index].name,
                                softWrap: true, overflow: TextOverflow.ellipsis, maxLines: 2,
                                style: const TextStyle(fontFamily: 'poppins', fontSize: 14, fontWeight: FontWeight.bold, color: AppColor.kLightBlack),),
                            ),
                            const SizedBox(height: 10,),
                            Text.rich(
                              TextSpan(
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: '\$250',
                                    style: TextStyle(fontFamily: 'poppins', fontSize: 14,decoration: TextDecoration.lineThrough,
                                        fontWeight: FontWeight.w500, color: AppColor.kBlack.withOpacity(.7)),
                                  ),
                                  const TextSpan(
                                    text: ' \$150',
                                    style: TextStyle(fontFamily: 'poppins', fontSize: 14,
                                        fontWeight: FontWeight.bold, color: AppColor.kBlue),
                                  )
                                ]
                              )
                            ),
                            const SizedBox(height: 10,),
                            Text.rich(
                                TextSpan(
                                    text: data[index].stock,
                                    style: TextStyle(fontFamily: 'poppins', fontSize: 14,
                                        fontWeight: FontWeight.w500, color: data[index].quantity==0? AppColor.kRed:AppColor.kGreen),
                                    children: <InlineSpan>[
                                      TextSpan(
                                        text: data[index].quantity== 0? '': data[index].quantity.toString(),
                                        style: const TextStyle(fontFamily: 'poppins', fontSize: 14,
                                            fontWeight: FontWeight.w500, color: AppColor.kBlack),
                                      ),
                                    ]
                                )
                            )
                          ],
                        ),
                        const SizedBox(width: 50,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            SizedBox(height: 16,),
                            Icon(Icons.delete,color: AppColor.kRed,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
class listItems{
  final String name;
  final String stock;
  final String img;
  final double quantity;

  listItems( {required this.name, required this.stock, required this.img,required this.quantity,});

}