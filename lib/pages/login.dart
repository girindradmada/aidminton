import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff095D7E),
      body: Stack(
        children: [
          Positioned(
            bottom: 140,
            child: Padding(
            padding: const EdgeInsets.only(left: 150,right: 150),
            child: ButtonTheme(
              minWidth: 150,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff33B249),
                ),
                onPressed: () {
              
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFFFF)
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ),
          ),
          ),
          Positioned(
            bottom: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 62, right: 60),
              child: Text(
                'Dont have an account? Sign Up',
                style: TextStyle(
                  color: Color(0xffB9D6E1),
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),
          ListView(
            children: [
              SizedBox(height: 15),
              topBar(context),
              SizedBox(height: 25),
              editColumn(),
            ],
          ),
        ],
      ),
    );
  }



  Column editColumn() {
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
                    borderRadius: BorderRadius.circular(30)
                  ),
                )
              ],
            ),
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
          ],
        );
  }

  Padding topBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 100),
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
                'Login',
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