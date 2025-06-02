import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aidminton/pages/commonInjuries.dart';
import 'package:aidminton/models/injuryDetails.dart';

class Templatecommoninjury extends StatefulWidget {
  final int whichPage;
  const Templatecommoninjury({super.key, required this.whichPage});

  @override
  State<Templatecommoninjury> createState() => _TemplatecommoninjuryState();
}

class _TemplatecommoninjuryState extends State<Templatecommoninjury> {
  List<InjuryDetailModel> injuryDetail = [];

  void _getInitialInfo() {
    injuryDetail = InjuryDetailModel.getInjuryDetails();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          injuryImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                injuryDetail[widget.whichPage].injuryName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff1B365D)
                ),
              ),
              SizedBox(height:30),
              Text(
                "Description",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  decoration: TextDecoration.underline,
                ),
              ),
              Text(
                injuryDetail[widget.whichPage].injuryDescription,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Gilroy-Light',
                  fontWeight: FontWeight.normal,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height:50),
              Text(
                "Causes",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  decoration: TextDecoration.underline,
                ),
              ),
              Text(
                injuryDetail[widget.whichPage].injuryCauses,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Gilroy-Light',
                  fontWeight: FontWeight.normal,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height:50),
              Text(
                "Symptoms",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  decoration: TextDecoration.underline,
                ),
              ),
              Text(
                injuryDetail[widget.whichPage].injurySymptoms,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Gilroy-Light',
                  fontWeight: FontWeight.normal,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height:50),
              Text(
                "Treatment",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  decoration: TextDecoration.underline,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:35, right:35),
                child: Text(
                  injuryDetail[widget.whichPage].injuryDescription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Gilroy-Light',
                    fontWeight: FontWeight.normal,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ]
            
          )
          
        ]
      )
    );
  }

  Column injuryImage() {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20, bottom: 20),
              child: Container(
                width: 185,
                height: 185,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.5,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(
                  injuryDetail[widget.whichPage].injuryPhoto
                ),
              ),
            )
          ],
        );
  }

  PreferredSize appBar() {
    return PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(45))
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  'Common Injuries',
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
                    context, MaterialPageRoute(builder: (context) => const CommonInjuries())
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
                  child: Image.asset(
                    'assets/icons/pfp.png',
                    width: 64, height: 64
                  ),
                )
              )
            ]
          )
        );
  }
}