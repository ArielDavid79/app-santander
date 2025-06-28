import 'package:app_santander/controllers/views/login.dart';
import 'package:flutter/material.dart';
 
class BotaoPreLogin extends StatefulWidget {
 
  IconData icon;
  String text;
 
  BotaoPreLogin(this.icon, this.text);
 
  @override
  State<BotaoPreLogin> createState() => _BotaoPreLoginState();
}
 
class _BotaoPreLoginState extends State<BotaoPreLogin> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
      },
      child: Card(
        child: Container(
          // padding: EdgeInsets.all(30),
          width: MediaQuery.of(context).size.width * 0.3,
          height: 100,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                color: Color.fromARGB(255, 236, 9, 0),
              ),
           
              SizedBox(height: 5),
              Text(
                widget.text,
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 