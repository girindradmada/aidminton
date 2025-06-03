import 'package:aidminton/models/contacts.dart';
import 'package:aidminton/pages/callMe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Emergencycontacts extends StatefulWidget {
  Emergencycontacts({super.key});

  @override
  State<Emergencycontacts> createState() => _EmergencycontactsState();
}

class _EmergencycontactsState extends State<Emergencycontacts> {
  List<ContactsModel> contacts = [];

  void _getInitialInfo() {
    contacts = ContactsModel.getContacts();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          SizedBox(height: 10),
          prebuiltContacts(),
          Padding(
            padding: EdgeInsets.all(15),
            child: Divider(),
          ),
          addContacts(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Registered Contacts',
              style: TextStyle(
                color: Color(0xff095D7E),
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            )
          ),
          SizedBox(height: 15),
          contactList(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }

  Column contactList() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: contacts.length,
              separatorBuilder: (context, index) => Padding(padding: EdgeInsets.symmetric(horizontal: 15), child: Divider(),),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(contacts[index].contactPhoto),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contacts[index].contactName,
                            style: TextStyle(
                              color: Color(0xff1B365D),
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          Text(
                            contacts[index].contactNumber,
                            style: TextStyle(
                              color: Color(0xff6BA5B6),
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            )
          ],
        );
  }

  Padding addContacts() {
    return Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            height: 75,
            width: 320,
            decoration: BoxDecoration(
              color: Color(0xff095D7E),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/Contacts.svg'),
                Text(
                  'Add Contacts',
                  style: TextStyle(
                    color: Color(0xffCCECEE),
                    fontSize: 30,
                    fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
          ),
        );
  }

  Row prebuiltContacts() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => callMe()
                  )
                );
              },
              child: Container(
                width: 100,
                height: 130, 
                decoration: BoxDecoration(
                  color: Color(0xff095D7E),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/ambulance.png'),
                    Text(
                      'Ambulance',
                      style: TextStyle(
                        color: Color(0xffCCECEE),
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => callMe()
                  )
                );
              },
              child: Container(
                width: 100,
                height: 130, 
                decoration: BoxDecoration(
                  color: Color(0xff095D7E),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/authorities.png'),
                    Text(
                      'Authorities',
                      style: TextStyle(
                        color: Color(0xffCCECEE),
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => callMe()
                  )
                );
              },
              child: Container(
                width: 100,
                height: 130, 
                decoration: BoxDecoration(
                  color: Color(0xff095D7E),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/clinic.png'),
                    Text(
                      'Clinic',
                      style: TextStyle(
                        color: Color(0xffCCECEE),
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      ),
                    )
                  ],
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
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(45)
          )
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Center(
            child: Text(
              'Emergency Contacts',
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