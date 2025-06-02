import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aidminton/models/log.dart';


class NewInjury  extends StatefulWidget{
  const NewInjury({super.key});
  

  @override
  State<NewInjury> createState() => _NewInjuryState();
}

class _NewInjuryState extends State<NewInjury> {
  TextEditingController _descController = TextEditingController();
  String selectedSeverity = 'assets/icons/low.svg'; // default
  DateTime? selectedDateTime;// replace with actual picker later
  TextEditingController _selectedType = TextEditingController();

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
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              if (_selectedType.text.trim().isEmpty || selectedDateTime == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Please enter injury name and date')),
                );
                return;
              }

              // ✅ Safe fallback
              final DateTime safeDate = selectedDateTime!;

              final newLog = LogModel(
                injuryName: _selectedType.text.trim(),
                logDate:
                    '${safeDate.day.toString().padLeft(2, '0')}/${safeDate.month.toString().padLeft(2, '0')}/${safeDate.year}',
                priority: selectedSeverity,
                description: _descController.text,
              );

              Navigator.pop(context, newLog);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xff095D7E),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),
                ),
              )
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Column mainContentInjury() {
    String displayDateTimeText = 'DD/MM/YYYY hh:mm';
    if (selectedDateTime != null) {
      displayDateTimeText =
          '${selectedDateTime!.day.toString().padLeft(2, '0')}/${selectedDateTime!.month.toString().padLeft(2, '0')}/${selectedDateTime!.year} ${selectedDateTime!.hour.toString().padLeft(2, '0')}:${selectedDateTime!.minute.toString().padLeft(2, '0')}';
    }
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
                      GestureDetector(
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                          );
                      
                          if (pickedDate != null) {
                            TimeOfDay? pickedTime = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            );
                      
                            if (pickedTime != null) {
                              setState(() {
                                selectedDateTime = DateTime(
                                  pickedDate.year,
                                  pickedDate.month,
                                  pickedDate.day,
                                  pickedTime.hour,
                                  pickedTime.minute,
                                );
                              });
                            }
                          }
                        },
                        child: Container(
                          width: 245,
                          height: 38,
                          decoration: BoxDecoration(
                            color: Color(0xffD9D9D9).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Center(
                            child: Text(
                              displayDateTimeText,
                              style: TextStyle(
                                color: Color(0xffF1F9FF),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                      child: TextField(
                        controller: _descController,
                        maxLines: 5,
                        style: TextStyle(color: Color(0xffF1F9FF)),
                        decoration: InputDecoration(
                          hintText: 'Describe the injury...',
                          hintStyle: TextStyle(color: Color(0xffF1F9FF)),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
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
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  'assets/icons/plusSign.png'
                ),
              ),
              Expanded(
                child: TextField(
                  controller: _selectedType,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xffCCECEE),
                    fontWeight: FontWeight.w600
                  ),
                  decoration: InputDecoration(
                    hintText: 'Injury Name',
                    hintStyle: TextStyle(
                        fontSize: 30,
                        color: Color(0xffCCECEE),
                        fontWeight: FontWeight.w600
                      ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
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
          ),
        ],
      ),
    );
  }
}