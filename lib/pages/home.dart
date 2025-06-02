import 'package:aidminton/pages/commonInjuries.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aidminton/pages/injuryLog.dart';
import 'package:aidminton/pages/medicalExperts.dart';
import 'package:aidminton/pages/mainentry.dart';
import 'package:aidminton/pages/searchbar.dart';

class HomePage extends StatefulWidget {
  final String name;

  const HomePage({super.key, required this.name});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          SizedBox(height: 20),
          injuryBox(),
          SizedBox(height: 15),
          mainMenus(),
        ],
      ),
    );
  }

  Row mainMenus() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 165,
              height: 180,
              decoration: BoxDecoration(
                color: Color(0xff095D7E),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/P3K logo.svg',
                    width: 52,
                    height: 42,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff095D7E),
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          
                        },
                        child: Text(
                          'First Aid Guides',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffCCECEE),
                          ),
                          textAlign: TextAlign.center,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 165,
              height: 180,
              decoration: BoxDecoration(
                color: Color(0xff095D7E),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/Doctor.svg',
                    width: 52,
                    height: 42,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff095D7E),
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Experts()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            'Medic Experts',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffCCECEE)),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 165,
              height: 180,
              decoration: BoxDecoration(
                color: Color(0xff095D7E),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/Contacts.svg',
                    width: 52,
                    height: 42,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff095D7E),
                        shadowColor: Colors.transparent
                      ),
                      onPressed: () {
                       
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 1, right: 2),
                        child: Text(
                          'Emergency Contacts',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffCCECEE)
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 165,
              height: 180,
              decoration: BoxDecoration(
                color: Color(0xff095D7E),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/Heart.svg',
                    width: 52,
                    height: 42,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff095D7E),
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CommonInjuries()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3, right: 2),
                          child: Text(
                            'Common Injuries',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffCCECEE)),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  Container injuryBox() {
    return Container(
      width: 325,
      height: 125,
      margin: EdgeInsets.only(left: 25, right: 25),
      decoration: BoxDecoration(
        color: Color(0xff095D7E),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/Log.svg',
            width: 50,
            height: 56,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Got Injured?',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffCCECEE)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff095D7E),
                    shadowColor: Colors.transparent),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const InjuryLog()),
                  );
                },
                child: Text(
                  'Log your injury here',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffCCECEE)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  PreferredSize appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(160),
      child: AppBar(
        toolbarHeight: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(45)),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 12, left: 10, right: 10),
          child: Row(
            children: [
              // Profile Image
              ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.asset(
                  'assets/icons/pfp.png',
                  width: 64,
                  height: 64,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12),
              // Text Greeting
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello,',
                    style: TextStyle(
                      color: Color(0xffF1F9FF),
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Text(
                    widget.name,
                    style: TextStyle(
                      color: Color(0xffF1F9FF),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
              // Notification Button
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainEntryPage()),
                  );
                },
                child: Container(
                  width: 38,
                  height: 38,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/Notification.svg',
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xff095D7E),
        elevation: 0,
        automaticallyImplyLeading: false, // Prevent back button space
        bottom: PreferredSize(

          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: GestureDetector(
              onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchBarCustom()),
                  );
              },
              child: Container(
              
                margin: EdgeInsets.only(bottom: 10),
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                ),
                // child: TextField(
                //   decoration: InputDecoration(
                //     filled: true,
                //     fillColor: Colors.white,
                //     contentPadding: EdgeInsets.all(10),
                //     hintText: 'Search for injuries',
                //     hintStyle: TextStyle(
                //       color: Color(0xffADADAD),
                //       fontSize: 16,
                //     ),
                //     prefixIcon: Padding(
                //       padding: const EdgeInsets.all(10),
                //       child: SvgPicture.asset('assets/icons/search.svg'),
                //     ),
                //     suffixIcon: Container(
                //       width: 41,
                //       height: 41,
                //       decoration: BoxDecoration(
                //         color: Color(0xffD9D9D9),
                //         shape: BoxShape.circle,
                //       ),
                //       child: Center(
                //         child: SvgPicture.asset('assets/icons/mic.svg'),
                //       ),
                //     ),
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(60),
                //       borderSide: BorderSide.none,
                //     ),
                //   ),
                // ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
