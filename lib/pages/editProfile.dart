import 'package:aidminton/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditProfile extends StatefulWidget{
  final String name;
  final String email;
  final String password;
  final String phone;

  const EditProfile({
    super.key,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
  });

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController phoneController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.name);
    emailController = TextEditingController(text: widget.email);
    passwordController = TextEditingController(text: widget.password);
    phoneController = TextEditingController(text: widget.phone);
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff095D7E),
      body: ListView(
        children: [
          SizedBox(height: 15),
          topBar(context),
          SizedBox(height: 25),
          profPic(),
          editColumn(),
          SizedBox(height: 30),
          Center(
            child: Text(
              'Log Out',
              style: TextStyle(
                color: Color(0xffFF2929),
                fontSize: 22,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }

  Center profPic() {
    return Center(
          child: Container(
            height: 200,
            width: 200,
            child: Stack(
              children: <Widget> [
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/icons/pfp.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.fill,
                  )
                ),
                Positioned(
                  bottom: 20,
                  right: 30,
                  child: Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Color(0xffCCECEE),
                      shape: BoxShape.circle
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/camera.svg',
                        width: 28,
                        height: 26
                      ),
                    ),
                  )
                )
              ],
            )
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
                      style: TextStyle(
                        color: Color(0xffF1F9FF),
                        fontSize: 22,
                        fontWeight: FontWeight.w400
                      ),
                      controller: nameController, // or the appropriate one
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                )
              ],
            ),
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
                      controller: emailController, // or the appropriate one
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                    child: TextField(
                      style: TextStyle(
                        color: Color(0xffF1F9FF),
                        fontSize: 22,
                        fontWeight: FontWeight.w400
                      ),
                      controller: passwordController, // or the appropriate one
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Phone Number',
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
                      controller: phoneController, // or the appropriate one
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        );
  }

  Row topBar(BuildContext context) {
    return Row(
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
              'Edit Profile',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Color(0xffF1F9FF),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      name: nameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      phone: phoneController.text,
                    )
                  )
                );
              },
              child: SvgPicture.asset(
                'assets/icons/greencheck.svg',
                width: 25,
                height: 25
              ),
            )
          ],
        );
  }
}