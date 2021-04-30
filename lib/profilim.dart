import 'package:flutter/material.dart';


class Profilim extends StatefulWidget {
  @override
  _ProfilimState createState() => _ProfilimState();
}

class _ProfilimState extends State<Profilim> {
  @override
  Widget build(BuildContext context) {
    var data1 = [];
    data1 = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000725),
        title: Text('Profilim'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Profil Bilgileri', style: TextStyle(fontSize: 60.0)),
              Text(data1[0],
                style: TextStyle(fontSize: 20.0),),
              Text(data1[1],
                style: TextStyle(fontSize: 20.0),),
              Text(data1[2],
                style: TextStyle(fontSize: 20.0),),
              SizedBox(height: 10,),

              Text('Şifreniz: ********',
                style: TextStyle(fontSize: 20.0),),

            ],
          ),
        ),
    );
  }
}