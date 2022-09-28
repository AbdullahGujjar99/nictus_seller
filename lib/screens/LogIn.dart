import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AppColor.dart';
import 'ForgotScreen.dart';
import 'SellerDashboard.dart';
import 'SignUpScreen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColor.kBlue,
                        AppColor.kDarkBlue,
                  ])
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 17.0, right: 17),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 342,),
                      const Text('Please login to your account',
                        style: TextStyle(fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                      ),SizedBox(height: 10,),
                      const TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            labelText: 'Email',labelStyle: TextStyle(
                            fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white
                        ),
                            hintText: 'Enter Your Email'
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const TextField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',labelStyle: TextStyle(
                            fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white
                        ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotScreen()));
                        }, child: const Text('Forgot Password?',
                          style: TextStyle(fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),)),
                      ),
                      // LogIn Button
                      Center(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(
                                builder: (context){
                                  return SellerDashboard();
                                }));
                          },
                          child: Container(
                            height: 40,
                            width: 301,
                            decoration: const BoxDecoration(
                                color: AppColor.kBlue,
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 2,
                                  ),
                                ]
                            ),
                            child: const Center(
                              child: Text('LogIn',
                                style: TextStyle(fontFamily: 'khand', fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                        }, child: const Text('Not have account?',
                          style: TextStyle(fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),)),
                      ),
                    ],
                  ),
                ),
              ),

              // White Circle

              Positioned(
                top: -67,
                left: -64,
                child: Container(
                  height: 354,
                  width: 354,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(250)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          spreadRadius: 1,
                          blurRadius: 2, // changes position of shadow
                        ),
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(height: 170,),
                      Text('Welcome to,',
                      style: TextStyle(fontFamily: 'khand', fontSize: 36, fontWeight: FontWeight.w500, color: AppColor.kBlack),
                      ),
                      Text('Nictus Seller',
                        style: TextStyle(fontFamily: 'khand', fontSize: 38, fontWeight: FontWeight.w700, color: AppColor.kBlue),
                      )
                    ],
                  ),
                ),
              ),

              //Blue Circle

              Positioned(
                top: -238,
                left: -132,
                child: Container(
                  height: 354,
                  width: 354,
                  decoration: BoxDecoration(
                      color: AppColor.kBlue,
                      borderRadius: const BorderRadius.all(Radius.circular(200)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          spreadRadius: 1,
                          blurRadius: 2, // changes position of shadow
                        ),
                      ]
                  ),
                ),
              ),
              Positioned(
                top: -217,
                left: 103,
                child: Container(
                  height: 354,
                  width: 354,
                  decoration: BoxDecoration(
                      color: AppColor.kBlue,
                      borderRadius: const BorderRadius.all(Radius.circular(250)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          spreadRadius: 1,
                          blurRadius: 2, // changes position of shadow
                        ),
                      ]
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
