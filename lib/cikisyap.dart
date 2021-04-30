import 'package:flutter/material.dart';

class Cikisyap extends StatefulWidget {
  @override
  _CikisyapState createState() => _CikisyapState();
}

class _CikisyapState extends State<Cikisyap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000725),
        title: Text('Hesabınızdan çıkış yaptınız'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Souvenir Store',
                  style: TextStyle(fontSize: 60.0)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
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