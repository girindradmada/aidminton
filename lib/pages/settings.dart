import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aidminton/pages/home.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: ListView(
          children: [
            Text("tes tes apa yang ada dua"),
            Text("its not your fault")
          ],
        ));
  }

  PreferredSize appBar() {
    return PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(45))),
            title: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  'Settings',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
            backgroundColor: Color(0xff095D7E),
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: SvgPicture.asset(
                  'assets/icons/arrow_back.svg',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            actions: [
              GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: 38,
                      height: 38,
                      margin: EdgeInsets.only(right: 30, top: 15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/profile.svg',
                        width: 64,
                        height: 64,
                      )))
            ]));
  }
}
