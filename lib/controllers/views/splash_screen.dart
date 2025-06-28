
import 'package:app_santander/controllers/views/pre_login.dart';
import 'package:flutter/material.dart';
 
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
 
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
 
class _SplashScreenState extends State<SplashScreen> {
 
  @override
  void initState() {
 
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PreLogin()
           )
        );
      }
    );
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 9, 0),
      body: Center(child: Image.asset("logo_santinha.png",width: 150,),
      ),  
    );
  }
}
 