import 'package:flutter/material.dart';

class Policy extends StatelessWidget {
  const Policy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

           // SizedBox(height: 0,),
            Text("Privacy Policies", style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold
            ),),

            SizedBox(height: 130,),
            Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                     
                     decoration: BoxDecoration(
                   color: Colors.green.shade300,
                   borderRadius: BorderRadius.circular(20)
                 ),
                     
                     child: Padding(
                       padding: const EdgeInsets.all(25.0),
                       child: Text("Policy Here", ),
                     ),
              ),
            ),
          ),
          SizedBox(height: 70,)
          ]),
      ));
  }
}