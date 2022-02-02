import 'package:flutter/material.dart';
import 'package:uher_nim/FormPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Formulir Biodata",
      home: FormPage(),
    );
  }
}
