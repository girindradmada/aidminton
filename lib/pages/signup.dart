import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatefulWidget{
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff095D7E),
      body: ListView(
        children: [
          SizedBox(height:15),
          topBar(context),
          SizedBox(height:30),
          signUpInfo(),
          SizedBox(height: 30,),
          signInButton(),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Already have an account? ",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffFFFFFF),
                ),
              ),
              GestureDetector(
                onTap:() {
                  
                },
                child: Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 50)
        ],
      )
    );
  }

  Padding signInButton() {
    return Padding(
          padding: const EdgeInsets.only(right: 145, left:132),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff33B249),
              shadowColor: Colors.transparent
            ),
            onPressed: () {
          
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 24,
                    fontWeight: FontWeight.w200
                  ),
                ),
              ],
            ),
          ),
        );
  }

  Column signUpInfo() {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
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
                )
              ]
            ),
            SizedBox(height:20),
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
                    borderRadius: BorderRadius.circular(30)
                  ),
                )
              ],
            ),
            SizedBox(height:20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
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
                    borderRadius: BorderRadius.circular(30)
                  ),
                )
              ],
            ),
            SizedBox(height:20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Confirm Password',
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
                    borderRadius: BorderRadius.circular(30)
                  ),
                )
              ],
            ),
          ]
        );
  }

  Padding topBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 85),
      child: Row (
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
                'Sign Up',
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
