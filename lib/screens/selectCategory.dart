// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shuadan_trader/screens/phoneScreen.dart';

class selectCategory extends StatefulWidget {
  const selectCategory({super.key});

  @override
  State<selectCategory> createState() => _selectCategoryState();
}

class _selectCategoryState extends State<selectCategory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF8be28e),
        body: Column(children: <Widget>[
          Center(
              child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Text(
              "Select Category",
              style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )),
          Row(
            children: [
             Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  width: 180,
                  height: 180,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/images/3.jpeg'),
                        height: 150,
                        width: 150,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.greenAccent[100]),
                          width: 180,
                          height: 30,
                          child: Center(
                              child: Text(
                            "Pharmacy",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )))
                    ],
                  ),
                ),
              ),
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  width: 180,
                  height: 180,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/images/10.jpeg'),
                        height: 150,
                        width: 150,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.greenAccent[100]),
                          width: 180,
                          height: 30,
                          child: Center(
                              child: Text(
                            "Cosmetics",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  width: 180,
                  height: 180,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/images/11.jpeg'),
                        height: 150,
                        width: 150,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.greenAccent[100]),
                          width: 180,
                          height: 30,
                          child: Center(
                              child: Text(
                            "Eggs",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )))
                    ],
                  ),
                ),
              ),
            ],
          ),
           SizedBox(height: 60,),
           ElevatedButton(
                  onPressed: () {
                     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const phoneScreen()),);
                  },
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(BorderSide(width: 2,color: Colors.white),),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF8be28e)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Next'),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
            Center(child: Text("(You can select multiple categories)"),)
        ]),
      ),
    );
  }
}
