import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Forgotpassword extends StatefulWidget{
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff095D7E),
      body: ListView(
        children: [
          SizedBox(height:15),
          topBar(context),
          SizedBox(height:30),
          emailAddressForgot(),
          SizedBox(height:15),
          instructionsForgot(),
          SizedBox(height: 300,),
          Padding (
            padding: const EdgeInsets.only(right: 90, left:90),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFFBD03),
                shadowColor: Colors.transparent
              ),
              onPressed: () {
          
              },
              child: Text(
                "Reset Password",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 24,
                  fontWeight: FontWeight.w200
                ),
              ),
            ),
          )
        ],
      )
    );
  }

  Column instructionsForgot() {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:15),
                  child: Text(
                    "\u2022",
                    style: TextStyle(
                      color: Color(0xffF1F9FF),
                      fontSize: 18,
                      
                    ),
                  ),
                ),
                SizedBox(width:10),
                Flexible(
                  child:Text(
                    "We’ll send your email within 1 - 12 hours of the request being sent.",
                    style: TextStyle(
                      color: Color(0xffF1F9FF),
                      fontSize: 18,
                
                    ),
                  )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:15),
                  child: Text(
                    "\u2022",
                    style: TextStyle(
                      color: Color(0xffF1F9FF),
                      fontSize: 18,
                      
                    ),
                  ),
                ),
                SizedBox(width:10),
                Flexible(
                  child:Text(
                    "Follow the instructions sent to your email and click the change password button",
                    style: TextStyle(
                      color: Color(0xffF1F9FF),
                      fontSize: 18,
                
                    ),
                  )
                ),
                SizedBox(width:20),
              ],
            )
          ],
        );
  }

  Column emailAddressForgot() {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email Address',
                  style: TextStyle(
                    color: Color(0xffF1F9FF),
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Container(
                  width: 345, 
                  height: 61,
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ]
            )
          ]
        );
  }

  Padding topBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50),
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  'assets/icons/arrow_back.svg',
                  width: 24,
                  height: 24,
                ),
              ),
              Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffF1F9FF),
                ),
              ),
            ],
          ),
    );
  }
}