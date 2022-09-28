import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nictus_seller/AppColor.dart';
import 'package:nictus_seller/screens/LogIn.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import '../Widgets/GradiantButton.dart';

enum WidgetMaker{
  password, otp, changed,
}
class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  _ForgotScreenState createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  WidgetMaker selectedWidget = WidgetMaker.password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomWidget(),
    );
  }
  CustomWidget() {
    switch(selectedWidget){
      case WidgetMaker.password:
        return passwordWidget();
      case WidgetMaker.otp:
        return otpWidget();
      case WidgetMaker.changed:
        return changedWidget();
    }
  }

  passwordWidget() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 100),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text('Create New',
            style: TextStyle(fontFamily: 'khand', fontSize: 36, fontWeight: FontWeight.w500, color: AppColor.kBlack),),
          const Text('Password',
          style: TextStyle(fontFamily: 'khand', fontSize: 44, fontWeight: FontWeight.bold, color: AppColor.kBlue),),
              const TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  labelText: 'Create New Password',labelStyle: TextStyle(
                    fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.kBlue
                ),
                ),
              ),
              const SizedBox(height: 20,),
              const TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  labelText: 'Confirm New Password',labelStyle: TextStyle(
                    fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.kBlue
                ),
                ),
              ),
              SizedBox(height: 200,),
              GradiantButton(ontap: (){
                setState(() {
                  selectedWidget = WidgetMaker.otp;
                });
                print(selectedWidget);
              }, text: 'Create Password',)
            ],
          ),
        ),
      ),
    );
  }

  otpWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Text('Enter',
                    style: TextStyle(fontFamily: 'khand', fontSize: 36, fontWeight: FontWeight.w500, color: AppColor.kBlack),),
                  Text('OTP',
                    style: TextStyle(fontFamily: 'khand', fontSize: 44, fontWeight: FontWeight.bold, color: AppColor.kBlue),),
                ],
              ),
              Image.asset('assets/images/otp.png'),
            ],
          ),
        ),
        SizedBox(height: 50,),
        const Text('Enter 4 digit code sent to',
          style: TextStyle(fontFamily: 'khand', fontSize: 20, fontWeight: FontWeight.w500, color: AppColor.kBlack),),
        const Text('johndoe123@gmail.com',
          style: TextStyle(fontFamily: 'khand', fontSize: 20, fontWeight: FontWeight.w500, color: AppColor.kBlue),),
        //OTP Text fields
        OTPTextField(
          length: 4,
          width: MediaQuery.of(context).size.width,
          fieldWidth: 80,
          style: TextStyle(
              fontSize: 17
          ),controller: OtpFieldController(

        ),
          otpFieldStyle: OtpFieldStyle(
            //focusBorderColor: AppColor.kBlue
          ),
          textFieldAlignment: MainAxisAlignment.spaceAround,
          fieldStyle: FieldStyle.underline,
          onChanged: (pin) {
            print("Changed: " + pin);
          },
          onCompleted: (pin) {
            print("Completed: " + pin);
          },
        ),
        SizedBox(height: 20,),
        const Text('0:31',
          style: TextStyle(fontFamily: 'khand', fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.kLightBlack),),
        const Text('Resend Code',
          style: TextStyle(fontFamily: 'khand', fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.kLightBlack),),
        SizedBox(height: 50,),
        // Bottom Button
        GradiantButton(ontap: (){
          setState(() {
            selectedWidget = WidgetMaker.changed;
          });
        }, text: 'Verify',)
      ],
    );
  }

  changedWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/lock.png'),
          const Text('Password Changed',
            style: TextStyle(fontFamily: 'khand', fontSize: 36, fontWeight: FontWeight.w500, color: AppColor.kBlack),),
          const Text('Successfully!',
            style: TextStyle(fontFamily: 'khand', fontSize: 44, fontWeight: FontWeight.bold, color: AppColor.kGreen),),
          SizedBox(height: 200,),
          GradiantButton(ontap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
          }, text: 'Continue')
        ],
      ),
    );
  }
}
