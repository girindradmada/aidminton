import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainEntryPage extends StatefulWidget {
  const MainEntryPage({super.key});

  @override
  State<MainEntryPage> createState() => _MainEntryState();
}

class _MainEntryState extends State<MainEntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  PreferredSize appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(45))),
        actions: [
          GestureDetector(
              onTap: () {},
              child: Container(
                  width: 111,
                  height: 44,
                  margin: EdgeInsets.only(right: 15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                      child: Text(
                    "English",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffCCECEE)),
                  )))),
          GestureDetector(
              onTap: () {},
              child: Container(
                  width: 44,
                  height: 47,
                  margin: EdgeInsets.only(right: 15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/QuestionMark.svg',
                      width: 44,
                      height: 44,
                    ),
                  )))
        ],
      ),
    );
  }
}
