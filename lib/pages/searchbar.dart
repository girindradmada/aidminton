import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarCustom extends StatefulWidget{
  const SearchBarCustom({super.key});

  @override
  State<SearchBarCustom> createState() => _SearchBarCustomState();

}

class _SearchBarCustomState extends State<SearchBarCustom> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:50, right:30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Recent",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff1B365D),
                                fontFamily: 'Gilroy-SemiBold',
                              ),
                            ),            
                          Image.asset(
                            'assets/icons/searchDeleteHistory.png',
                            height: 40,
                            width:40,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                      padding: const EdgeInsets.only(top:12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:3.0),
                            child: Image.asset('assets/icons/searchRecentlySearched.png'),
                          ),
                          SizedBox(width: 30),
                          Text(
                            "Sprained Ankle",
                            style: TextStyle(
                              fontFamily: "Gilroy-Medium",
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2C3E50),
                            ),
                          )
                        ],
                      ),
                    ),
                      Padding(
                      padding: const EdgeInsets.only(top:12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:3.0),
                            child: Image.asset('assets/icons/searchRecentlySearched.png'),
                          ),
                          SizedBox(width: 30),
                          Text(
                            "Bruise Medications",
                            style: TextStyle(
                              fontFamily: "Gilroy-Medium",
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2C3E50),
                            ),
                          )
                        ],
                      ),
                    ),
                      Padding(
                      padding: const EdgeInsets.only(top:12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:3.0),
                            child: Image.asset('assets/icons/searchRecentlySearched.png'),
                          ),
                          SizedBox(width: 30),
                          Text(
                            "Shoulder Injuries",
                            style: TextStyle(
                              fontFamily: "Gilroy-Medium",
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2C3E50),
                            ),
                          )
                        ],
                      ),
                    ),
                      Padding(
                      padding: const EdgeInsets.only(top:12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:3.0),
                            child: Image.asset('assets/icons/searchRecentlySearched.png'),
                          ),
                          SizedBox(width: 30),
                          Text(
                            "ACL Tear",
                            style: TextStyle(
                              fontFamily: "Gilroy-Medium",
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2C3E50),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:30.0, right: 30),
            child: Divider(
              color:Color(0xff095D7E),
              thickness: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:50, right:30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Suggested",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1B365D),
                          fontFamily: 'Gilroy-SemiBold',
                        ),
                      ),            
                      Image.asset(
                        'assets/icons/searchSuggestedSearch.png',
                        height: 40,
                        width:40,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:3.0),
                        child: SvgPicture.asset('assets/icons/search.svg'),
                      ),
                      SizedBox(width: 30),
                      Flexible(
                        child: Text(
                          "Common badminton injuries",
                          style: TextStyle(
                            fontFamily: "Gilroy-Medium",
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff2C3E50),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:3.0),
                        child: SvgPicture.asset('assets/icons/search.svg'),
                      ),
                      SizedBox(width: 30),
                      Text(
                        "How to stop back pain",
                        style: TextStyle(
                          fontFamily: "Gilroy-Medium",
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff2C3E50),
                        ),
                      )
                    ],
                  ),
                ),  
                Padding(
                  padding: const EdgeInsets.only(top:12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:3.0),
                        child: SvgPicture.asset('assets/icons/search.svg'),
                      ),
                      SizedBox(width: 30),
                      Flexible(
                        child: Text(
                          "Reducing joint pain",
                          style: TextStyle(
                            fontFamily: "Gilroy-Medium",
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff2C3E50),
                          ),
                        ),
                      )
                    ],
                  ),
                ),  
                Padding(
                  padding: const EdgeInsets.only(top:12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:3.0),
                        child: SvgPicture.asset('assets/icons/search.svg'),
                      ),
                      SizedBox(width: 30),
                      Flexible(
                        child: Text(
                          "Correct way to fall during badminton",
                          style: TextStyle(
                            fontFamily: "Gilroy-Medium",
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff2C3E50),
                          ),
                        ),
                      )
                    ],
                  ),
                ),  
                Padding(
                  padding: const EdgeInsets.only(top:12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:3.0),
                        child: SvgPicture.asset('assets/icons/search.svg'),
                      ),
                      SizedBox(width: 30),
                      Flexible(
                        child: Text(
                          "How to improve footwork",
                          style: TextStyle(
                            fontFamily: "Gilroy-Medium",
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff2C3E50),
                          ),
                        ),
                      )
                    ],
                  ),
                ),  
                Padding(
                  padding: const EdgeInsets.only(top:12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:3.0),
                        child: SvgPicture.asset('assets/icons/search.svg'),
                      ),
                      SizedBox(width: 30),
                      Flexible(
                        child: Text(
                          "Why does my left hand hurt after playing badminton",
                          style: TextStyle(
                            fontFamily: "Gilroy-Medium",
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff2C3E50),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}

  PreferredSize appBar(BuildContext context) {
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
              'Search',
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70), // Give enough room
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              height: 46,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60),
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.zero, // Reduce internal padding
                  hintText: 'Search for injuries',
                  hintStyle: TextStyle(
                    color: Color(0xffADADAD),
                    fontSize: 16,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset('assets/icons/search.svg'),
                  ),
                  suffixIcon: Container(
                    width: 41,
                    height: 41,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SvgPicture.asset('assets/icons/mic.svg'),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      
    );
  }


