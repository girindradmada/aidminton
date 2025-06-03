import 'package:aidminton/pages/callMe.dart';
import 'package:aidminton/pages/frequentAnswer.dart';
import 'package:flutter/material.dart';
import 'package:aidminton/models/frequentAsk.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomerService extends StatefulWidget {
  const CustomerService({super.key});

  @override
  State<CustomerService> createState() => _CustomerServiceState();
}

class _CustomerServiceState extends State<CustomerService> {
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
            padding: EdgeInsets.symmetric(horizontal: 162),
            child: Text(
              'FAQs',
              style: TextStyle(
                color: Color(0xff1B365D),
                fontSize: 27,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Divider(),
          ),
          frequentAsking(),
          SizedBox(height: 40,),
          SizedBox(
            width: 412,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Call Center',
                  style: TextStyle(
                    color: Color(0xff095D7E),
                    fontSize: 19,
                    fontWeight: FontWeight.w400
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        final Uri whatsappUrl = Uri.parse("https://wa.me/6281292251056"); // Replace with your number
                        if (await canLaunchUrl(whatsappUrl)) {
                          await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
                        } else {
                          print("Cannot launch WhatsApp");
                        }
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xff095D7E),
                          shape: BoxShape.circle
                        ),
                        child: Center(
                          child: Image.asset('assets/icons/material-symbols_chat.png'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) => const callMe(),
                          )
                        );
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xff095D7E),
                          shape: BoxShape.circle
                        ),
                        child: Center(
                          child: Image.asset('assets/icons/ion_call.png'),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Column frequentAsking() {
    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: faqs.length,
              separatorBuilder: (context, index) =>
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Divider(),
                ),
              itemBuilder: (context, index) {
                int gotoAnswer = index;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        faqs[index].question,
                        style: TextStyle(
                          color: Color(0xff095D7E),
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => frequentAnswer(whichQuestion: gotoAnswer),
                            )
                          );
                        },
                        child: Image.asset('assets/icons/forwardArrow.png')
                      ),
                    )
                  ],
                );
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Divider(),
            ),
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
              'Customer Service',
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
          child: Text('')
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