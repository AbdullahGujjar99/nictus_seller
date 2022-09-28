import 'package:flutter/material.dart';
import 'package:nictus_seller/AppColor.dart';

class SignUpApproval extends StatefulWidget {
  const SignUpApproval({Key? key}) : super(key: key);

  @override
  _SignUpApprovalState createState() => _SignUpApprovalState();
}

class _SignUpApprovalState extends State<SignUpApproval> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/approval.png'),
            SizedBox(height: 50,),
            const Text('Pending Approval',
              style: TextStyle(fontFamily: 'khand', fontSize: 44, fontWeight: FontWeight.bold, color: AppColor.kBlue),
            ),
            SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50),
              child: Text('Your account is on pending approval, you will be notified once it get notified.',
                style: TextStyle(fontFamily: 'khand', fontSize: 20, fontWeight: FontWeight.w500, color: AppColor.kBlack),
              )
              // Text.rich(TextSpan(
              //     text: 'Your account is on pending approval, you will be notified once it get notified. ',
              //     style: TextStyle(fontFamily: 'khand', fontSize: 20, fontWeight: FontWeight.w500, color: AppColor.kBlack),
              //     children: <InlineSpan>[
              //       TextSpan(
              //         text: '\nStay tuned with us',
              //               //         style: TextStyle(fontFamily: 'khand', fontSize: 20, fontWeight: FontWeight.w500, color: AppColor.kLightOrange),
              //       )
              //     ]
              // ),)
            ),
            Center(
              child: GestureDetector(onTap: (){},
                child: const Text('Stay tuned with us',
                  style: TextStyle(fontFamily: 'khand', fontSize: 20, fontWeight: FontWeight.w500, color: AppColor.kLightOrange),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
