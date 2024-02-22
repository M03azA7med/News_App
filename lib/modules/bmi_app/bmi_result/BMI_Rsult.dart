import 'package:flutter/material.dart';

class bmiResult extends StatelessWidget {

final int result;
final bool isMale;
final int age;

   bmiResult({required this.result, required this.isMale, required this.age});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender:${isMale ? 'male':'Female'}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:25,
            ),),
            Text(
              'Result:$result',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:25,
            ),),
            Text(
              'Age:$age',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:25,
            ),),
          ],
        ),
      ),
    );
  }
}
