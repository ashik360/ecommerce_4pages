import 'package:flutter/material.dart';

class TopProducts extends StatelessWidget {
  static const String path = "TopProducts";
  const TopProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
                "Back",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            
        ),
        body: Container(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            children: [
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
              ),
            ],
          ),
        ),
      )
    );
  }
}
