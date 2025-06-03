import 'package:aidminton/pages/signup.dart';
import 'package:aidminton/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aidminton/pages/forgotpassword.dart';

class MainEntryPage extends StatefulWidget {
  const MainEntryPage({super.key});

  @override
  State<MainEntryPage> createState() => _MainEntryState();
}

class _MainEntryState extends State<MainEntryPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Image.asset('assets/icons/Logo.png'),
          const SizedBox(height: 30),
          LoginBox(),
          const SizedBox(height: 20),
          SignUpBox(),
          const SizedBox(height: 30),
          Forgot_AccountBox(),
        ],
      ),
    );
  }

  Widget Forgot_AccountBox() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Forgotpassword()));
      },
      child: Center(
        child: Text(
          "Forgot Account?",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Color(0xff095D7E),
          ),
        ),
      ),
    );
  }

  Widget LoginBox() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
      },
      child: Container(
        width: 363,
        height: 69,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: const Color(0xff095D7E),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            "Login",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color(0xffF1F9FF),
            ),
          ),
        ),
      ),
    );
  }

  Widget SignUpBox() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SignupPage()),
        );
      },
      child: Container(
        width: 363,
        height: 69,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: const Color(0xffCCECEE),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color(0xff095D7E),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSize appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: AppBar(
        leading: const SizedBox(),
        backgroundColor: const Color(0xff095D7E),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(45)),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 111,
              height: 44,
              margin: const EdgeInsets.only(right: 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Color(0xffCCECEE)),
              ),
              child: const Center(
                child: Text(
                  "English",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffCCECEE),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 44,
              height: 47,
              margin: const EdgeInsets.only(right: 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xffCCECEE)),
              ),
              child: Center(
                child: SvgPicture.asset('assets/icons/QuestionMark.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}