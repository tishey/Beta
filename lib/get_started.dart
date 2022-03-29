// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, avoid_print, deprecated_member_use

// import 'package:beta/home_screen.dart';
import 'package:flutter/material.dart';
import 'signup.dart';


// class UserInput extends StatelessWidget{
//   const UserInput({Key? key}) : super(key: key);
//   @override
//   build(BuildContext context){
//     return;
//   }
// }

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
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

  @override

  // void userInput(){
  //   String enteredEmail =! null,
  //   Int enteredAmount =! null;

  //   if(enteredEmail.isEmpty || enteredAmount.isEmpty){
  //     return;
  //   }
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          height: 900,
          child: Column(children: <Widget>[
            Container(
              child: Image.asset(
                'lib/assets/image/beta logo.png',
                height: 90,
              ),
            ),
            Text(
              'Welcome Back',
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Text(
              'Sign to continue',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 60),
            Container(
              width: 350,
              child: Column(children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15),
                  child: Form(
                    key: formKey,
                    autovalidate: true,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator:  validatepass,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Form(
                    autovalidate: true,
                    child: TextFormField(
                      validator:  validatepass,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                     
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.purple),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 60,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Don\'t have account?',
                    ),
                    Builder(
                      builder: (context) {
                        return TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),),);
                          },
                          child: Text(
                            'create a new account',
                            style: TextStyle(
                                color: Colors.purple, fontWeight: FontWeight.bold),
                          ),
                        );
                      }
                    ),
                  ],
                )
              ]),
            ),
          
          ]),
        ),
      ),
    );
  }
}
