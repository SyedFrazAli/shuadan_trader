// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:pinput/pinput.dart';
import 'package:flutter/material.dart';

class otpScreen extends StatefulWidget {
  const otpScreen({super.key});

  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
     final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(255, 255, 255, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
    );


    var code = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8be28e),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
              child: Container(
            padding: const EdgeInsets.only(left: 125, right: 120, top: 70),
            margin: const EdgeInsetsDirectional.only(start: 20),
            child: const Image(image: AssetImage('assets/icons/5.png')),
          )),
          const Text(
            'Varification',
            style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Enter your OTP you received\nthrough SMS',
            style: TextStyle(
                fontSize: 24, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          const SizedBox(
            height: 20,
          ),
            Pinput(
                  defaultPinTheme: defaultPinTheme,
                  length: 4,
                  onChanged: (value) {
                    code = value;
                  },
                  showCursor: true,
                ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'You will get code in',
            style: TextStyle(
                fontSize: 24, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: 250,
            child: TextButton(
              
                onPressed: () {},
                style: ButtonStyle(
                  
                    backgroundColor:
                        MaterialStateColor.resolveWith((states) => Colors.white)),
                child: Text(
                  "Resend OTP",
                  style: TextStyle(
                      fontSize: 34,
                      color: Colors.greenAccent[200],
                      fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
