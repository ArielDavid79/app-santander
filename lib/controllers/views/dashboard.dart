import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Image.asset("fundo_dashboard.png"),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "teste3.png",
                    width: 150,
                  ),
                  
                  Row(
                    children: [
                      Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  
                ],
                
              ),
            ),
            Positioned(
              top: 145,
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text("ola,Ariel",
                  style: TextStyle(color:Colors.white, fontSize: 17,),
                   ),
                   Text("ag 1578  cc 125487-5  ",
                  style: TextStyle(
                    color:Colors.white, fontSize: 18,fontWeight:FontWeight.bold ),
                   ),
                ],),
              ),
            )
          ],
          )

        ],
      ),
    );
  }
}
