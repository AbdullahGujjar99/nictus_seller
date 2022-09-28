import 'package:flutter/material.dart';
import 'package:nictus_seller/AppColor.dart';
import 'package:nictus_seller/screens/LogIn.dart';

import 'SignUpApproval.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50,),
                const Text('Sign Up At,',
                style: TextStyle(fontFamily: 'khand', fontSize: 36, fontWeight: FontWeight.w400, color: AppColor.kBlack),),
                  const Text('Nictus Seller',
                    style: TextStyle(fontFamily: 'khand', fontSize: 38, fontWeight: FontWeight.w700, color: AppColor.kBlue),
                  ),
                  const SizedBox(height: 20,),
                  const Text('Personal Info',
                    style: TextStyle(fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.kBlack),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value){},
                          decoration: const InputDecoration(
                            labelText: 'First Name',labelStyle: TextStyle(
                              fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.kBlue
                          ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      Expanded(
                        child: TextField(
                          onChanged: (value){},
                          decoration: const InputDecoration(
                            labelText: 'Last Name',labelStyle: TextStyle(
                              fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.kBlue
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    onChanged: (value){},
                    decoration: const InputDecoration(
                      labelText: 'Email',labelStyle: TextStyle(
                        fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.kBlue
                    ),
                    ),
                  ),
                  TextField(
                    onChanged: (value){},
                    decoration: const InputDecoration(
                      labelText: 'Password',labelStyle: TextStyle(
                        fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.kBlue
                    ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text('Shop Info',
                    style: TextStyle(fontFamily: 'khand', fontSize: 22, fontWeight: FontWeight.w400, color: AppColor.kBlack),),
                  TextField(
                    onChanged: (value){},
                    decoration: const InputDecoration(
                      labelText: 'Shop Name',labelStyle: TextStyle(
                        fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.kBlue
                    ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    height: 66,
                    width: MediaQuery.of(context).size.width*.95,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(const Radius.circular(10)),
                      border: Border.all(
                          color: AppColor.kBlue, // Set border color
                          width: 1.0
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Upload shop logo',
                            style: TextStyle(fontFamily: 'khand', fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.kBlack),
                          ),
                          MaterialButton(onPressed: (){},
                            color: AppColor.kBlue,
                            child: const Text('+Upload',
                              style: TextStyle(fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context){
                              return const SignUpApproval();
                            }));
                      },
                      child: Container(
                        height: 40,
                        width: 301,
                        decoration: const BoxDecoration(
                            color: AppColor.kBlack,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Center(
                          child: Text('SignUp',
                            style: TextStyle(fontFamily: 'khand', fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}