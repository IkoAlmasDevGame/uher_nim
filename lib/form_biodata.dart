import 'package:flutter/material.dart';
import 'package:uher_nim/Detail_Biodata.dart';

class BiodataForm extends StatefulWidget {
  @override
  BiodataForm_State createState() => BiodataForm_State();
}

class BiodataForm_State extends State<BiodataForm> {
  final _NimTextBoxController = TextEditingController();
  final _NamaTextBoxController = TextEditingController();
  final _EmailTextBoxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Biodata',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: "Times New Romans"),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxNim(),
            _textboxNama(),
            _textboxEmail(),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }

  _textboxNim(){
    return TextField(
      decoration: InputDecoration(labelText: 'Nim'),
      controller: _NimTextBoxController
    );
  }

  _textboxNama(){
    return TextField(
      decoration: InputDecoration(labelText: 'Nama'),
      controller: _NamaTextBoxController
    );
  }

  _textboxEmail(){
    return TextField(
      decoration: InputDecoration(labelText: 'E-mailing'),
      controller: _EmailTextBoxController
    );
  }

  _tombolSimpan(){
    return RaisedButton(
      child: Text('Simpan'),
      onPressed: (){
        int nim = int.parse(_NimTextBoxController.text);
        String nama = _NamaTextBoxController.text;
        String email = _EmailTextBoxController.text;

        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>FormDetail(
          nim: nim, nama: nama, email: email))
        );
      },
    );
  }
}

