import 'package:flutter/material.dart';
import 'package:gambel/Screeens/Home_screen.dart';

void main(){
  runApp(gambel());
}

class gambel extends StatelessWidget {
  const gambel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeScreen(),
    );
  }
}
