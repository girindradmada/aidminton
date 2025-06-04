import 'package:aidminton/models/aidDetails.dart';
import 'package:aidminton/pages/firstAidGuide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aidminton/pages/commonInjuries.dart';
import 'package:aidminton/models/injuryDetails.dart';

class TemplateFirstAid extends StatefulWidget {
  final int whichPage;
  const TemplateFirstAid({super.key, required this.whichPage});

  @override
  State<TemplateFirstAid> createState() => _TemplateFirstAidState();
}

class _TemplateFirstAidState extends State<TemplateFirstAid> {
  List<AidDetailsModel> aidDetail = [];

  void _getInitialInfo() {
    aidDetail = AidDetailsModel.getAidDetails();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          aidImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                aidDetail[widget.whichPage].aidName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff1B365D)
                ),
              ),
              SizedBox(height:30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(aidDetail[widget.whichPage].aidImage1),
                          SizedBox(
                            height:23,
                            child: Text(
                              aidDetail[widget.whichPage].aidDescription1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Gilroy-Light',
                                fontWeight: FontWeight.normal,
                                color: Color(0xff000000),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(aidDetail[widget.whichPage].aidImage2),
                          SizedBox(
                            height:23,
                            child: Text(
                              aidDetail[widget.whichPage].aidDescription2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Gilroy-Light',
                                fontWeight: FontWeight.normal,
                                color: Color(0xff000000),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(aidDetail[widget.whichPage].aidImage3),
                          SizedBox(
                            height:23,
                            child: Text(
                              aidDetail[widget.whichPage].aidDescription3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Gilroy-Light',
                                fontWeight: FontWeight.normal,
                                color: Color(0xff000000),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(aidDetail[widget.whichPage].aidImage4),
                          SizedBox(
                            height:23,
                            child: Text(
                              aidDetail[widget.whichPage].aidDescription4,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Gilroy-Light',
                                fontWeight: FontWeight.normal,
                                color: Color(0xff000000),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]
            
          )
          
        ]
      )
    );
  }

  Column aidImage() {
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
                  aidDetail[widget.whichPage].aidMainImage
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
                  'First Aid Guide',
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
                    context, MaterialPageRoute(builder: (context) => const FirstAidGuide())
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