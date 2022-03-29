// import 'package:flutter/material.dart';

// class Validate extends StatelessWidget{
//   Validate({Key? key}) : super(key: key);

//   GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   void validate() {
//     if (formKey.currentState!.validate()) {
//       print('Validated');
//     } else {
//       print('Not validated');
//     }
//   }

//   String? validatepass(value) {
//     if (value!.isEmpty) {
//       return "Required";
//     } else {
//       return null;
//     }
//   }
  
//   @override
//   Widget build(BuildContext context){
//     return Container();
//   }
// }


void main(){
  int step1Result = add(n1: 5, n2: 9);

  int step2Result = multiply(step1Result, 5);

  double finalResult = step2Result / 3;

  print(finalResult);

}

  int add({int? n1, int? n2}){
    return n1! + n2!;
    
  }

  int multiply(int n1, int n2){
    return n1 * n2;
  }