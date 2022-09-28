import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nictus_seller/AppColor.dart';

class Riders extends StatefulWidget {
  const Riders({Key? key}) : super(key: key);

  @override
  _RidersState createState() => _RidersState();
}

class _RidersState extends State<Riders> {
  var data = [
    listItems(name: 'Ali', mail: 'mail@gmail.com ', gender: 'man', phone: '030125487', vendor: 'abc', isSwitched: false),
    listItems(name: 'Ali', mail: 'mail@gmail.com ', gender: 'man', phone: '030125487', vendor: 'abc', isSwitched: false),
    listItems(name: 'Ali', mail: 'mail@gmail.com ', gender: 'man', phone: '030125487', vendor: 'xyz', isSwitched: false),
    listItems(name: 'Ali', mail: 'mail@gmail.com ', gender: 'man', phone: '030125487', vendor: 'xyz', isSwitched: false)
  ];
   // = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.kWhite,
        iconTheme: const IconThemeData(
          color: AppColor.kBlue,
        ),
        title: Center(
          child: const Text('Riders',
              style: TextStyle(fontFamily: 'poppins',fontSize: 14,
                  color: AppColor.kBlack, fontWeight: FontWeight.w500)),
        ),
        actions: [
          Icon(Icons.notifications_none_outlined,color: AppColor.kBlue,),
          SizedBox(width: 12,)
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20),
                    child: Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width*95,
                      decoration: BoxDecoration(
                          color: AppColor.kWhite,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: AppColor.kLightBlack.withOpacity(.4),
                                spreadRadius: 2,
                                blurRadius: 5
                            )
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/images/rider.png'),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                  TextSpan(
                                    text: data[index].name,
                                      style: const TextStyle(fontFamily: 'poppins', fontSize: 14, fontWeight: FontWeight.bold,
                                          color: AppColor.kBlack),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: '(${data[index].gender})',
                                          style: TextStyle(fontFamily: 'poppins', fontSize: 12,
                                              fontWeight: FontWeight.w500, color: AppColor.kGreen.withOpacity(.7)),
                                        ),
                                      ]
                                  )
                              ),
                              Text(data[index].mail,
                                  style: TextStyle(fontFamily: 'poppins', fontSize: 14,
                                      fontWeight: FontWeight.w500, color: AppColor.kBlack),
                              ),
                              Text(data[index].phone,
                                style: TextStyle(fontFamily: 'poppins', fontSize: 14,
                                    fontWeight: FontWeight.w500, color: AppColor.kBlack),
                              ),
                              Text.rich(
                                  TextSpan(
                                      text: 'Vendor: ',
                                      style: const TextStyle(fontFamily: 'poppins', fontSize: 14, fontWeight: FontWeight.bold,
                                          color: AppColor.kBlue),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: data[index].vendor,
                                          style: TextStyle(fontFamily: 'poppins', fontSize: 12,
                                              fontWeight: FontWeight.w500, color: AppColor.kBlack.withOpacity(.7)),
                                        ),
                                      ]
                                  )
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.delete,color: AppColor.kRed,),
                              Icon(Icons.edit,color: AppColor.kBlue,),
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
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
class listItems{
  final String name;
  final String mail;
  final String phone;
  final String vendor;
  final String gender;
  bool isSwitched;

  listItems(  {required this.name, required this.mail, required this.phone,required this.vendor,required this.gender, required this.isSwitched,});

}