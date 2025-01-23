import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/home01_ui.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_km_project/views/home02_ui.dart';

class introduction_screen_ui extends StatefulWidget {
  const introduction_screen_ui({super.key});

  @override
  State<introduction_screen_ui> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<introduction_screen_ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Sau Hello',
            body: 'Welcome to Thailand',
            image: Image.asset(
              'assets/images/one.png',
              width: MediaQuery.of(context).size.width * 0.6,
            )

          ),
          PageViewModel(
             title: 'Sau Hello',
            body: 'Welcome to Thailand',
            image: Image.asset(
              'assets/images/two.png',
              width: MediaQuery.of(context).size.width * 0.6,
            )

          ),
          PageViewModel(
             title: 'Sau Yea',
            body: 'Welcome to india',
            image: Image.asset(
              'assets/images/three.png',
              width: MediaQuery.of(context).size.width * 0.6,
            )

          ),
          PageViewModel(
             title: 'Sau Hola',
            body: 'Welcome to spain',
            image: Image.asset(
              'assets/images/four.png',
              width: MediaQuery.of(context).size.width * 0.6,
            )

          ),
          PageViewModel(
             title: 'Sau Yes',
            body: 'Welcome to italy',
            image: Image.asset(
              'assets/images/five.png',
              width: MediaQuery.of(context).size.width * 0.6,
            )

          ),

        ],
        showSkipButton: true,
        skip: Text(
          'ข้าม',
        ),
        showNextButton: true,
        next: Icon(
          Icons.arrow_forward_ios,
        ),
        showDoneButton: true,
        done: Text(
          'หน้าหลัก'
        ),
        onDone: () {
          Navigator.push(context,
          MaterialPageRoute (builder: (context) => Home02Ui()))
        },
        scrollPhysics: ClampingScrollPhysics(),
      ),
    );
  }
}