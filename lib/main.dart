import 'package:flutter/material.dart';

void main() {
  runApp(
   Destini()
  );
}

class Destini extends StatelessWidget {
  const Destini({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(

            title: Center(
              child:Text(
                'Destini App'
              ) ,),
        )
        ),
        );
        
  }
}
