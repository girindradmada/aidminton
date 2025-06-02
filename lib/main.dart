import 'package:aidminton/pages/customerService.dart';
import 'package:aidminton/pages/mainentry.dart';
import 'package:aidminton/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:aidminton/pages/home.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Gilroy'
      ),
      home: MainEntryPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  final String name;
  final String email;
  final String password;
  final String phone;

  const MainPage({
    super.key,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int myIndex = 1;

  late final List<Widget> pages;
  @override
  void initState() {
    super.initState();
    pages = [
      CustomerService(),
      HomePage(name: widget.name),
      Settings(
        name: widget.name,
        email: widget.email,
        password: widget.password,
        phone: widget.phone,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: myIndex,
        children: pages,
      ),
      bottomNavigationBar: navigationBar(),
    );
  }

  Widget navigationBar() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0.1, vertical: 0.1),
        decoration: BoxDecoration(
          color: Color(0xffCCECEE),
          borderRadius: BorderRadius.circular(45),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: myIndex,
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xffE2FCD6),
          unselectedItemColor: Color(0xff095D7E),
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  width: 43,
                  height: 43,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: myIndex == 0
                          ? Color(0xff095D7E)
                          : Colors.transparent),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/Customer Care.svg',
                      width: 30,
                      height: 24,
                      colorFilter: ColorFilter.mode(
                        myIndex == 0 ? Color(0xffE2FCD6) : Color(0xff095D7E),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                label: 'Customer Care'),
            BottomNavigationBarItem(
                icon: Container(
                  width: 43,
                  height: 43,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: myIndex == 1
                          ? Color(0xff095D7E)
                          : Colors.transparent),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/Home.svg',
                      width: 30,
                      height: 24,
                      colorFilter: ColorFilter.mode(
                        myIndex == 1 ? Color(0xffE2FCD6) : Color(0xff095D7E),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Container(
                  width: 43,
                  height: 43,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: myIndex == 2
                          ? Color(0xff095D7E)
                          : Colors.transparent),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/Settings.svg',
                      width: 30,
                      height: 24,
                      colorFilter: ColorFilter.mode(
                        myIndex == 2 ? Color(0xffE2FCD6) : Color(0xff095D7E),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                label: 'Settings'),
          ],
        ),
      ),
    );
  }
}