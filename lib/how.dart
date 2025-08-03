import 'package:flutter/material.dart';

class How extends StatelessWidget {
  const How({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue.shade800,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        
              SizedBox(height: 40,),
              Text("How It Works?", style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
        
              SizedBox(height: 50,),
              Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                       
                       decoration: BoxDecoration(
                     color: Colors.blue.shade500,
                     borderRadius: BorderRadius.circular(20)
                   ),
                       
                       child: Padding(
                         padding: const EdgeInsets.all(25.0),
                         child: Text("Indian Palmistry Is very ancient and accurate. In this app we provide detailed readings based on Palmistry and Astrology. Good Resolution Palm closeups( Left for Women, Right for Men) will be needed for reading.",
                         textAlign: TextAlign.center
                         ,style: TextStyle(
                           color: Colors.white,
                           fontSize: 35
                         ), ),
                       ),
                ),
              ),
            ),
            SizedBox(height: 70,)
            ]),
        ),
      ));
  }
}