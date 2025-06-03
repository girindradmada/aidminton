import 'package:aidminton/pages/customerService.dart';
import 'package:aidminton/pages/mainentry.dart';
import 'package:aidminton/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:aidminton/pages/home.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Gilroy'),
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
    Key? key,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
  }) : super(key: key);

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
        decoration: BoxDecoration(
          color: const Color(0xffCCECEE),
          borderRadius: BorderRadius.circular(45),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: myIndex,
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xffE2FCD6),
          unselectedItemColor: const Color(0xff095D7E),
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: _navIcon('assets/icons/Customer Care.svg', 0),
              label: 'Customer Care',
            ),
            BottomNavigationBarItem(
              icon: _navIcon('assets/icons/Home.svg', 1),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _navIcon('assets/icons/Settings.svg', 2),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }

  Widget _navIcon(String assetPath, int index) {
    return Container(
      width: 43,
      height: 43,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: myIndex == index ? const Color(0xff095D7E) : Colors.transparent,
      ),
      child: Center(
        child: SvgPicture.asset(
          assetPath,
          width: 30,
          height: 24,
          colorFilter: ColorFilter.mode(
            myIndex == index ? const Color(0xffE2FCD6) : const Color(0xff095D7E),
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
