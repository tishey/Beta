// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_types_as_parameter_names

import 'package:beta/get_started.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class LabelText {
 late String label;
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validate() {
    if (formKey.currentState!.validate()) {
      print('Validated');
    } else {
      print('Not validated');
    }
  }

  String? validatepass(value) {
    if (value!.isEmpty) {
      return "Required";
    } else {
      return null;
    }
  }

  

Container buildKey({required String labelText}) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Form(
        child: TextFormField(
          decoration: InputDecoration(
            labelText: '$labelText',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          validator: validatepass,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
              child: Container(
           
           padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
            child: Column(
              children: <Widget>[
                Text(
                  'Create Account',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text('create a new account'),
                SizedBox(height: 50),
                buildKey(labelText: 'Name'),
                 buildKey(labelText: 'Email'),
                  buildKey(labelText: "Username"),
                   buildKey(labelText: "Password"),
                    buildKey(labelText: "Confirm Password"),
        
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    'Create Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have a account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GetStarted(),
                            ),
                          );
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple),
                        )),
                  ],
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}


