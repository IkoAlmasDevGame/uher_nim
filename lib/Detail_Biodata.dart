import 'package:flutter/material.dart';

class FormDetail extends StatefulWidget {
  final int nim;
  final String nama;
  final String email;

  FormDetail({required this.nim, required this.nama, required this.email});

  @override
  _FormDetailState createState()=> _FormDetailState();
}

class _FormDetailState extends State<FormDetail>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Detail',
          style: TextStyle(fontSize: 16, fontFamily: "Times New Romans", fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Nim    : ' + widget.nim.toString()),
          Text('Nama    : ${widget.nama}'),
          Text('Email   : ${widget.email}'),
        ],
      ),
    );
  }
}