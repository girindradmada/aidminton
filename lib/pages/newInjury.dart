import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class NewInjury  extends StatefulWidget{
  const NewInjury({super.key});

  @override
  State<NewInjury> createState() => _NewInjuryState();
}

class _NewInjuryState extends State<NewInjury> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          SizedBox(height: 20),
          injuryType(),
          Center(
            child: Text(
              'please select type of injury',
              style: TextStyle(
                color: Color(0xff6BA5B6),
                fontSize: 14,
                fontWeight: FontWeight.w400
              )
            ),
          ),
          SizedBox(height: 20),
          mainContentInjury(),
          SizedBox(height: 20)
        ],
      ),
    );
  }

  Column mainContentInjury() {
    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Severity',
                  style: TextStyle(
                    color: Color(0xff095D7E),
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  )
                ),
                Container(
                  width: 350,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Color(0xff095D7E),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/bandage.png'),
                      SvgPicture.asset('assets/icons/low.svg'),
                      SvgPicture.asset('assets/icons/mild.svg'),
                      SvgPicture.asset('assets/icons/Alert triangle.svg'),
                    ],
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Date & Time',
                  style: TextStyle(
                    color: Color(0xff095D7E),
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  )
                ),
                Container(
                  width: 350,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Color(0xff095D7E),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/calendar.png'),
                      Container(
                        width: 245,
                        height: 38,
                        decoration: BoxDecoration(
                          color: Color(0xffD9D9D9).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(45)
                        ),
                        child: Center(
                          child: Text(
                            'DD/MM/YYYY hh:mm:ss',
                            style: TextStyle(
                              color: Color(0xffF1F9FF),
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description (optional)',
                  style: TextStyle(
                    color: Color(0xff095D7E),
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  )
                ),
                Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff095D7E),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Container(
                      width: 313, 
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Dawg ts hurts so much please help me, I cannot walk whatsoever, someone please get some help. I GOT A DISLOCATED SHOULDER WHAT THE FK, AAAAGGHH IT HURTSSS GET IT OFF MEE HELPPP HELP MEEE HELPPP ',
                            style: TextStyle(
                              color: Color(0xffF1F9FF),
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        )
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        );
  }

  Container injuryType() {
    return Container(
          width: 350,
          height: 125,
          margin: EdgeInsets.only(left: 30, right: 30),
          decoration: BoxDecoration(
            color: Color(0xff095D7E),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/plusSign.png'
              ),
              Text(
                'Injury Type',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xffCCECEE),
                  fontWeight: FontWeight.w600
                ),
              )
            ],
          ),
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
              'New Injury',
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
              child: Container(
                width: 128,
                height: 128,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
                ),
                child: Center(
                  child: Image.asset(
                    'assets/icons/pfp.png',
                    width: 64,
                    height: 64
                  ),
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}