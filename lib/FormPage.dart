import 'package:flutter/material.dart';
import 'package:uher_nim/Detail_Biodata.dart';
import 'package:uher_nim/form_biodata.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Mahasiswa',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, fontFamily: "Times New Romans"),
        ),
        actions: [
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () async {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context)=>BiodataForm()));
            },
          ),
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Mahasiswa(
            nim: 12181001,
            nama: "Jhony",
            email: "jhony_12181001@bsi.ac.id",
          ),
          Mahasiswa(
            nim: 12181002,
            nama: "Andi",
            email: "andi_12181001@bsi.ac.id",
          ),
          Mahasiswa(
            nim: 12181003,
            nama: "Santi",
            email: "santi_12181001@bsi.ac.id",
          ),
        ],
      ),
    );
  }
}

class Mahasiswa extends StatelessWidget{
  final int nim;
  final String nama;
  final String email;

  Mahasiswa({required this.nim, required this.nama, required this.email});

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      child: Card(
       child: ListTile(
        title: Text(nim.toString()),
        subtitle: Text(nama),
        ),
      ),
      onTap: (){
        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>
        FormDetail(
            nim: nim,
            nama: nama,
            email: email)));
      },
    );
  }
}
