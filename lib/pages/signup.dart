import 'package:aidminton/main.dart';
import 'package:aidminton/pages/login.dart';
import 'package:aidminton/pages/mainentry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatefulWidget{
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController phoneController;

  const Signup({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.phoneController,
  });

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController nameEditingController = TextEditingController();
  
  @override
  void dispose() {
    emailEditingController.dispose(); 
    passwordEditingController.dispose();
    nameEditingController.dispose();
    super.dispose();
  }
  
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
                  color: Color(0xffB9D6E1),
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => LoginPage())
                  ); // This goes BACK to the previous LoginPage
                },
                child: Text(
                  "Log In",
                  style: TextStyle(
                    color: Color(0xffB9D6E1),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50)
        ],
      )
    );
  }

  Padding signInButton() {
    return Padding(
              padding: const EdgeInsets.only(right: 120, left: 120),
              child: SizedBox(
              width: 150,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff14967F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainPage(
                          name: widget.nameController.text.isNotEmpty
                              ? widget.nameController.text
                              : 'Guest',
                          email: widget.emailController.text,
                          password: widget.passwordController.text,
                          phone: widget.phoneController.text,
                        ),
                      ),
                    );
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                    child: TextField(
                      controller: widget.nameController,
                      style: TextStyle(
                        color: Color(0xffF1F9FF),
                        fontSize: 22,
                        fontWeight: FontWeight.w400
                      ),
                      decoration: InputDecoration(
                        hintText: 'Insert Name',
                        border: InputBorder.none,
                      ),
                    ),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                    child: TextField(
                      style: TextStyle(
                        color: Color(0xffF1F9FF),
                        fontSize: 22,
                        fontWeight: FontWeight.w400
                      ),
                      controller: widget.emailController,
                      decoration: InputDecoration(
                        hintText: 'Insert Email',
                        border: InputBorder.none,
                      ),
                    ),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                    child: TextField(
                      style: TextStyle(
                        color: Color(0xffF1F9FF),
                        fontSize: 22,
                        fontWeight: FontWeight.w400
                      ),
                      controller: widget.passwordController,
                      decoration: InputDecoration(
                        hintText: 'Insert Password',
                        border: InputBorder.none,
                      ),
                    ),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                    child: TextField(
                      controller: widget.passwordController,
                      style: TextStyle(
                        color: Color(0xffF1F9FF),
                        fontSize: 22,
                        fontWeight: FontWeight.w400
                      ),
                      decoration: InputDecoration(
                        hintText: 'Insert Password',
                        border: InputBorder.none,
                      ),
                    ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MainEntryPage()));
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
