import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InjuryDetails extends StatefulWidget{
  const InjuryDetails({super.key});

  @override
  State<InjuryDetails> createState() => _InjuryDetailsState();
}

class _InjuryDetailsState extends State<InjuryDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            width: 350,
            height: 620, 
            decoration: BoxDecoration(
              color: Color(0xff095D7E),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                topInfo(),
                recommendedActions(),
                learnMore(),
              ],
            ),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }

  Container learnMore() {
    return Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xffE2FCD6),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Learn More',
                      style: TextStyle(
                        color: Color(0xff095D7E),
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    Image.asset('assets/icons/pointright.png')
                  ],
                ),
              );
  }

  Row topInfo() {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/Alert triangle.svg'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dislocated Shoulder',
                        style: TextStyle(
                          color: Color(0xffCCECEE),
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Logged on 69/20/2025',
                        style: TextStyle(
                          color: Color(0xffCCECEE),
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(height: 10),   
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Recommended action(s)',
                            style: TextStyle(
                              color: Color(0xffCCECEE),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 10),
                          SvgPicture.asset(
                            'assets/icons/play_arrow_filled.svg',
                            width: 20,
                            height: 20,
                          )
                        ],
                      )                    
                    ],
                  )
                ],
              );
  }

  Container recommendedActions() {
    return Container(
                width: 300,
                height: 345,
                decoration: BoxDecoration(
                  color: Color(0xffD9D9D9).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:15),
                          child: Text(
                            "\u2022",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                        SizedBox(width:10),
                        Flexible(
                          child:Text(
                            "Arson",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                            ),
                          )
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:15),
                          child: Text(
                            "\u2022",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                        SizedBox(width:10),
                        Flexible(
                          child:Text(
                            "Commit Arson",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                            ),
                          )
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:15),
                          child: Text(
                            "\u2022",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                        SizedBox(width:10),
                        Flexible(
                          child:Text(
                            "Don't Come near me, imma commit arson",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                            ),
                          )
                        )
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
              'Injury Log',
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
              Navigator.pop(context);
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
              child: Image.asset(
                'assets/icons/pfp.png',
                width: 64,
                height: 64
              ),
            )
          )
        ],
      ),
    );
  }
}