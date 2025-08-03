import 'package:flutter/material.dart';

class Fees extends StatelessWidget {
  const Fees({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(height: 0,),
                  Text(
                    "Fees Structure",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
          
                  SizedBox(
                    height: 130,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade300,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Text(
                            "For Detailed\n Life Users\n Have to Paid\n₹ 750",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  )
                ]),
          ),
        ));
  }
}
