import 'package:aidminton/models/frequentAsk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class frequentAnswer extends StatefulWidget {
  final int whichQuestion;
  const frequentAnswer({super.key, required this.whichQuestion});
  
  @override 
  State<frequentAnswer> createState() => _frequentAnswerState();
}

class _frequentAnswerState extends State<frequentAnswer> {
  List<FrequentModel> faqs = [];

  void _getInitialInfo() {
    faqs = FrequentModel.getFaq();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              faqs[widget.whichQuestion].question,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Color(0xff095D7E)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              faqs[widget.whichQuestion].answer,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),
            ),
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
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(45))
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  'Frequently Asked',
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