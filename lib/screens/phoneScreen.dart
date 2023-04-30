// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shuadan_trader/screens/otpScreen.dart';
import 'package:shuadan_trader/screens/screen3.dart';

class phoneScreen extends StatefulWidget {
  const phoneScreen({super.key});

  @override
  State<phoneScreen> createState() => _phoneScreenState();
}

class _phoneScreenState extends State<phoneScreen> {
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
            'Enter your number',
            style: TextStyle(
                fontSize: 24, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: IntlPhoneField(
              decoration: InputDecoration(
                  labelText: "Enter Phone Number",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  )),
              initialCountryCode: "PK",
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: TextButton(
                onPressed: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const otpScreen()),
                    );
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white)),
                child: Text(
                  "Get OTP",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
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
