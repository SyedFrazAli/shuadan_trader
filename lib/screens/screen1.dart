// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:shuadan_trader/screens/loginScreen.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
          onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const loginScreen()),
        );
      },child:Scaffold(
          
          backgroundColor: const Color(0xFF8be28e),
          body: Column(
            children: [
              const SizedBox(height: 150,),
              Container(padding: const EdgeInsets.all(25),child: Image.asset('assets/images/1.png'),),
              
              Text('Tap',style: TextStyle(fontSize: 36 , fontWeight: FontWeight.bold, color: Color.fromARGB(174, 255, 255, 255)),),
              
            ],
          ),
      
      ),
    );
  }
}