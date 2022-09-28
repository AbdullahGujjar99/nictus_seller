import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../AppColor.dart';
import 'ReviewScreens/AddReviews.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  var data = [
    ListItems(name: 'Men casual summer shirt', img: 'man', rate: 4.5, isSwitched: false),
    ListItems(name: 'Men casual summer shirt', img: 'bag', rate: 4.6, isSwitched: false),
    ListItems(name: 'Modern home decor stand', img: 'house', rate: 4.8, isSwitched: false),
    ListItems(name: 'Modern lounge chair', img: 'chair', rate: 4.3, isSwitched: false)
  ];
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
          child: Text('Reviews',
              style: TextStyle(fontFamily: 'poppins',fontSize: 14,
                  color: AppColor.kBlack, fontWeight: FontWeight.w500)),
        ),
        actions: const [
          Icon(Icons.notifications_none_outlined,color: AppColor.kBlue,),
          SizedBox(width: 12,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height*.18,
                        width: MediaQuery.of(context).size.width*.9,
                        decoration: BoxDecoration(
                            color: AppColor.kWhite,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10)
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColor.kLight.withOpacity(.2),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                offset: const Offset(0,3),
                              )
                            ]
                        ),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height,
                                width: 126,
                                child: Image.asset('assets/images/${data[index].img}.png', fit: BoxFit.fill,)),
                            const SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(height: 10,),
                                SizedBox(
                                  height: 37,
                                  width: 142,
                                  child: AutoSizeText(
                                    data[index].name,
                                    style: const TextStyle(fontFamily: 'poppins', fontSize: 14, fontWeight: FontWeight.bold,
                                        color: AppColor.kBlack),
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(height: 12,),
                                Text('18-jul-2022',
                                  style: TextStyle(fontFamily: 'poppins', fontSize: 14,decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.bold, color: AppColor.kBlack.withOpacity(.7)),
                                ),
                                const SizedBox(height: 10,),
                                Text.rich(
                                    TextSpan(
                                        text: '⭐⭐⭐⭐⭐',
                                        style: const TextStyle(fontFamily: 'poppins', fontSize: 14,
                                            fontWeight: FontWeight.w500, color: AppColor.kOrange),
                                        children: <InlineSpan>[
                                          TextSpan(
                                            text: '(${data[index].rate.toString()})',
                                            style: const TextStyle(fontFamily: 'poppins', fontSize: 12,
                                                fontWeight: FontWeight.w500, color: AppColor.kBlack),
                                          ),
                                        ]
                                    )
                                )
                              ],
                            ),
                            const SizedBox(width: 30,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Icon(Icons.delete,color: AppColor.kRed,),
                                const Icon(Icons.edit,color: AppColor.kBlue,),
                                Switch(
                                  value: data[index].isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      data[index].isSwitched = value;
                                      print(data[index].isSwitched);
                                    });
                                  },
                                  activeTrackColor: AppColor.kLightGreen,
                                  activeColor: AppColor.kGreen,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddReviews()));
      },
        backgroundColor: AppColor.kOrange,
        child: const Icon(Icons.add,color: AppColor.kWhite,),
      ),
    );
  }
}
class ListItems{
  final String name;
  bool isSwitched;
  final String img;
  final double rate;

  ListItems( {required this.name, required this.isSwitched, required this.img,required this.rate,});

}