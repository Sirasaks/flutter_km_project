import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/home01_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      Duration (
        seconds: 3,
      ),
      ()=>Navigator.pushReplacement(
        context,
        MaterialPageRoute (
          builder: (context) => Home01Ui(),
          )
        ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/one.png',
              width: MediaQuery.of(context).size.width * 0.55,
            ),
            Text(
              'Flutter KM App',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height *0.02,
              )
            ),
            Text(
              'เรียนรู้การใช้งาน Flutter เบื้องต้น',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height *0.02,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.075,
            ),
            CircularProgressIndicator(
              color: Colors.white
            )
          ],
        ),
      ),
    );
  }
}