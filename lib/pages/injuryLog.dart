import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aidminton/pages/home.dart';
import 'package:aidminton/models/log.dart';

class InjuryLog extends StatefulWidget {
  const InjuryLog({super.key});

  @override 
  State<InjuryLog> createState() => _InjuryLogState();
}

class _InjuryLogState extends State<InjuryLog> {
  List<LogModel> logs = [];

  void _getInitialInfo() {
    logs = LogModel.getLog();
  }

  @override 
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          SizedBox(height: 15,),
          listLog(),
        ],
      ),
    );
  }
  Column listLog() {
    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: logs.length,
              separatorBuilder: (context, index) => SizedBox(height: 20),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  width: 350, 
                  height: 125,
                  decoration: BoxDecoration(
                    color: Color(0xff095D7E),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 15,),
                      SvgPicture.asset(
                        logs[index].priority,
                        width: 61,
                        height: 61
                      ),
                      SizedBox(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          Text(
                            logs[index].injuryName,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffCCECEE)
                            ),
                          ),
                          Text(
                            'Logged on ' + logs[index].logDate,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffCCECEE)
                            ),
                          ),
                          SizedBox(height: 15),
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
                  )
                );
              },
            )
          ],
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