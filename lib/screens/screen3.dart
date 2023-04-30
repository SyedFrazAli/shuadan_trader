// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:shuadan_trader/screens/rSignup.dart';
import 'package:shuadan_trader/screens/wSignup.dart';


class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset('assets/icons/7.jpg'),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Ap kon hain?',
            style: TextStyle(fontSize: 24),
          ),
          Row(
            children: [
              Column(children: [
                const SizedBox(
                  height: 20,
                  width: 100,
                ),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: <Widget>[
                    Image.asset(
                      'assets/icons/6.png',
                      height: 200,
                      width: 190,
                    ),
                    Image.asset(
                      'assets/icons/9.png',
                      height: 240,
                      width: 220,
                    ),
                  ],
                ),
              ]),
              Column(
                children: <Widget>[
                  Text(
                    'Main aik',
                    style: TextStyle(fontSize: 24),
                  ),
                  Row(
                    children: [
                      Text("Wholesaler ",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      Text("hon",
                          style: TextStyle(
                            fontSize: 24,
                          )),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const wSignup()),
        );
                    },
                    icon: Icon(
                      Icons.arrow_forward_rounded,
                      size: 50,
                    ),
                    color: Color(0xFF8be28e),
                  ),
                ],
              ),
            ],
          ),
         Row(
            children: [
    
              Column(
                children: <Widget>[
                  Text(
                    'Main aik',
                    style: TextStyle(fontSize: 24),
                  ),
                  Row(
                    children: [
                      Text("        Retailar ",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      Text("hon",
                          style: TextStyle(
                            fontSize: 24,
                          )),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const rSignup()),
        );
        },
                    icon: Icon(
                      Icons.arrow_forward_rounded,
                      size: 50,
                    ),
                    color: Color(0xFF8be28e),
                  ),
                  
                ],
              ),
           
           Stack(
                  alignment: Alignment.centerLeft,
                  children: <Widget>[
                    Image.asset(
                      'assets/icons/6.png',
                      height: 200,
                      width: 190,
                    ),
                    Image.asset(
                      'assets/icons/8.png',
                      height: 230,
                      width: 230,
                    ),
                  ],
                ),
              ],
          ),
        ],
      ),
    );
  }
}
