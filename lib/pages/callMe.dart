import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class callMe extends StatefulWidget {
  const callMe({super.key});

  @override
  State<callMe> createState() => _callMeState();
}

class _callMeState extends State<callMe> {
  final AudioPlayer _player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _playSound();
  }

  void _playSound() async {
    await _player.setReleaseMode(ReleaseMode.loop);
    await _player.play(AssetSource('audio/donttouchdial.mp3'));
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff095D7E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 192,
            height: 192,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ),
            child: Center(
              child: Image.asset(
                'assets/icons/iconCall.png',
                color: Color(0xff095D7E),
              ),
            ),
          ),
          Text(
            'Call Center',
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 33,
              fontWeight: FontWeight.w600
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 77,
                height: 77,
                decoration: BoxDecoration(
                  color: Color(0xffEDF3F8),
                  shape: BoxShape.circle
                ),
                child: Center(
                  child: Image.asset('assets/icons/micwak.png'),
                ),
              ),
              Container(
                width: 77,
                height: 77,
                decoration: BoxDecoration(
                  color: Color(0xffEDF3F8),
                  shape: BoxShape.circle
                ),
                child: Center(
                  child: Image.asset('assets/icons/speakerwak.png'),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  await _player.stop(); // stop audio
                  Navigator.pop(context); // then exit the screen
                },
                child: Container(
                  width: 77,
                  height: 77,
                  decoration: BoxDecoration(
                    color: Color(0xffFF2929),
                    shape: BoxShape.circle
                  ),
                  child: Center(
                    child: Image.asset('assets/icons/endcall.png'),
                  ),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}