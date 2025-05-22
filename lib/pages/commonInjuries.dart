import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aidminton/pages/home.dart';
import 'package:aidminton/models/common.dart';

class CommonInjuries extends StatefulWidget {
  const CommonInjuries({super.key});

  @override
  State<CommonInjuries> createState() => _CommonInjuriesState();
}

class _CommonInjuriesState extends State<CommonInjuries> {
  List<CommonModel> commons = [];

  void _getInitialInfo() {
    commons = CommonModel.getCommon();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: commons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                  childAspectRatio: 170 / 160, // width / height
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.black,
                        width: 1, // You had 10 — adjust as needed
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          commons[index].injuryPhoto,
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 8),
                        Text(
                          commons[index].commonName,
                          style: TextStyle(
                            color: Color(0xff1B365D),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          )
        ],
      )
    );
  }

  PreferredSize appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(45)
          )
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Center(
            child: Text(
              'Common Injuries',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),
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
                context, MaterialPageRoute(builder: (context) => const HomePage())
              );
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
            onTap: () {

            },
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
              ),
            )
          )
        ],
      ),
    );
  }
}