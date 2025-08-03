import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
 const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/bgc.png", ),
            )
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 14),
                child: Text("Hello,\nWelcome to\nPalmistry Live Readings", style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 12, top: 10),
                child: Text("Talk With Astrologer", style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 10, top: 10),
                child: Text("Something Special is Waiting for You!", style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: InkWell(
                    onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));} ,

                    child: Container(
                     // height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(colors: [
                          Colors.yellow.shade400,
                          Colors.yellow.shade900
                        ])
                      ),

                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Get Started", style: TextStyle(fontSize: 28,),),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25,)
            ],
          ),
         ),
      )
    );
  }
}

