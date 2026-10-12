import 'package:flutter/material.dart';

class TestFile extends StatefulWidget {
  static String id = "TestFile";
  const TestFile({super.key});

  @override
  State<TestFile> createState() => _TestFileState();
}

class _TestFileState extends State<TestFile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 200,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.pink,
                  height: 150,
                  width: 200,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 150,
                  width: 200,
                ),
              ),
            ],
          ),
          Container(
            color: Colors.yellow,
            height: 200,
            width: MediaQuery.of(context).size.width,

          ),
          Row(
            children: [
              Column(children: [
                Container(
                  color: Colors.blue,
                  height: MediaQuery.of(context).size.width/ ,
                  width: 50,
                ),
                Container(
                  color: Colors.pink,
                  height: MediaQuery.of(context).size.height/ 6.6,
                  width: 50,
                ),
              ],),
              Container(
                color: Colors.deepOrange,
                height: 50,
                width: 50,
              ),


            ],
          )

        ],
      ),
    ));
  }
}
