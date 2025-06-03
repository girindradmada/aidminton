import 'package:aidminton/pages/mainentry.dart';
import 'package:aidminton/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aidminton/services/auth_service.dart';
import 'package:aidminton/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff095D7E),
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(height: 15),
              topBar(context),
              SizedBox(height: 25),
              editColumn(),
              SizedBox(height: 100),
              loginButton(context),
              SizedBox(height: 10),
              signUporNo(),
            ],
          ),
        ],
      ),
    );
  }

  Padding signUporNo() {
    return Padding(
      padding: const EdgeInsets.only(left: 62, right: 60),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignupPage()),
          );
        },
        child: Text(
          'Dont have an account? Sign Up',
          style: TextStyle(
            color: Color(0xffB9D6E1),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Padding loginButton(BuildContext context) {
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
          onPressed: () async {
            final result = await AuthService().login(
              emailController.text.trim(),
              passwordController.text.trim(),
            );

            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));

            if (result == 'Login successful') {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MainPage(
                    name: 'User', // Replace with actual name if needed
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                    phone: '', // Or fetch/set properly if needed
                  ),
                ),
              );
            }
          },
          child: Text(
            "Login",
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
                fontWeight: FontWeight.w600,
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
                  controller: emailController,
                  style: TextStyle(
                    color: Color(0xffF1F9FF),
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Insert Email',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
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
                fontWeight: FontWeight.w600,
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
                  controller: passwordController,
                  obscureText: true,
                  style: TextStyle(
                    color: Color(0xffF1F9FF),
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Insert Password',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MainEntryPage()));
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