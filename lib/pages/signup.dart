import 'package:aidminton/pages/login.dart';
import 'package:aidminton/pages/mainentry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aidminton/services/auth_service.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff095D7E),
      body: ListView(
        children: [
          const SizedBox(height: 15),
          topBar(context),
          const SizedBox(height: 30),
          signUpInfo(),
          const SizedBox(height: 30),
          signInButton(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account? ",
                style: TextStyle(
                  color: Color(0xffB9D6E1),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: const Text(
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
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Padding signInButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: SizedBox(
        width: 150,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff14967F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () async {
            if (passwordController.text != confirmPasswordController.text) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Passwords do not match")),
              );
              return;
            }

            final result = await AuthService().register(
              nameController.text.trim(),
              emailController.text.trim(),
              passwordController.text.trim(),
            );

            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));

            if (result == 'User registered') {
              Navigator.pop(context);
            }
          },
          child: const Text(
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
        buildInputField("Name", nameController, false),
        const SizedBox(height: 20),
        buildInputField("Email Address", emailController, false),
        const SizedBox(height: 20),
        buildInputField("Password", passwordController, true),
        const SizedBox(height: 20),
        buildInputField("Confirm Password", confirmPasswordController, true),
      ],
    );
  }

  Widget buildInputField(String label, TextEditingController controller, bool obscure) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xffF1F9FF),
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        Container(
          width: 345,
          height: 61,
          decoration: BoxDecoration(
            color: const Color(0xffD9D9D9).withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
            child: TextField(
              controller: controller,
              obscureText: obscure,
              style: const TextStyle(
                color: Color(0xffF1F9FF),
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                hintText: 'Insert $label',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Padding topBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 85),
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
          const Text(
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