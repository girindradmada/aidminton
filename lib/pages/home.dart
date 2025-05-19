import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override 
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
    );
  }

  PreferredSize appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,',
                style: TextStyle(
                  color: Color(0xffF1F9FF),
                  fontSize: 16,
                  fontWeight: FontWeight.w100
                ),
              ), 
              Text(
                'Asep!',
                style: TextStyle(
                  color: Color(0XffF1F9FF),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        backgroundColor: Color(0xff095D7E),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: SvgPicture.asset(
            'assets/icons/profile.svg',
            width: 64,
            height: 64,
          ),
        ), 
        actions: [
          GestureDetector(
            onTap: () {

            },
            child: Container(
              width: 38,
              height: 38,
              margin: EdgeInsets.only(right: 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                'assets/icons/Notification.svg',
                width: 30,
                height: 30,
              ),
            )
          )
        ],
      )
    );
  }
}