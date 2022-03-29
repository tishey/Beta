// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'get_started.dart';

void main() {
  runApp(const Beta());
}

class Beta extends StatelessWidget {
  const Beta({Key? key}) : super(key: key);
  

  @override
  build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'MontserratAlternates'),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            height: 800,
            child: Column(
              children: [
                Center(
                  child: Container(
                    child: Image.asset('lib/assets/image/beta logo.png', height: 90,),
                    padding: EdgeInsets.fromLTRB(0, 50, 50, 70),
                  ),
                ),
                Center(
                  
                    child: Image.asset('lib/assets/image/woman.gif',
                        fit: BoxFit.cover),
                  
                ),
                SizedBox(height: 50),
                Builder(
                  builder: (context) {
                    return TextButton(
                      onPressed: () {
                        
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GetStarted(),
                          ),
                        );
                      },
                      child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.purple,
                          ),
                          height: 50,
                          width: 250,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Get Started',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.arrow_right_alt_outlined,
                                    color: Colors.white),
                              ])),
                    );
                  }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
