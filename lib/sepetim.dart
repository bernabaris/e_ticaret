import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:e_ticaret/girisyap.dart';

class Sepetim extends StatefulWidget {
  @override
  _SepetimState createState() => _SepetimState();
}

class _SepetimState extends State<Sepetim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000725),
        title: Text('Sepetim'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Souvenir Store',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 60.0,color: Color(0xff369503))),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Girisyap()),
                    );
                  },
                  child: Text('Anasayfaya Dön'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}