import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mims/screens/home_screen.dart';
import 'package:mims/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 7), (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -MediaQuery.of(context).size.height / 13,
            left: MediaQuery.of(context).size.width / 13,
            child: Container(
              width: MediaQuery.of(context).size.height / 4.5,
              height: MediaQuery.of(context).size.height / 4.5,
              decoration: BoxDecoration(
                color: primaryLightColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: -MediaQuery.of(context).size.width / 8,
            child: Container(
              width: MediaQuery.of(context).size.height / 4.5,
              height: MediaQuery.of(context).size.height / 4.5,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 5,),
                Container(
                  width: MediaQuery.of(context).size.height / 2.5,
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 25,),
                const Text("Gets things done with MiMS", style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: MediaQuery.of(context).size.height / 25,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 15),
                  child: const Text("MiMS adalah aplikasi seluler yang dibuat untuk membantu mahasiswa dan dosen dalam mengetahui jadwal dan menjadwalkan ulang selain hal tersebut masih banyak lagi fitur lain didalamnya", textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
