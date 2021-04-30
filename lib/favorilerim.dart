import 'package:flutter/material.dart';
import 'package:e_ticaret/girisyap.dart';

class Favorilerim extends StatefulWidget {
  @override
  _FavorilerimState createState() => _FavorilerimState();
}

class _FavorilerimState extends State<Favorilerim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorilerim',
        style:TextStyle(color: Color(0xffd28005)),
      ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>Girisyap()),
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