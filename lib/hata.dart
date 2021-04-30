import 'package:flutter/material.dart';

class Hata extends StatefulWidget {
  @override
  _HataState createState() => _HataState();
}

class _HataState extends State<Hata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000725),
        title: Text('Hata'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Souvenir Mağazası',
                  style: TextStyle(
                      fontSize: 60.0,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Color(0xffd28005),
                  )),
              Text('Mail adresinizi ve şifrenizi uyumlu bir şekilde giriniz!'),

            ],
          ),
        ),
      ),
    );
  }
}