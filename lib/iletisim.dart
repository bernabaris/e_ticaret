import 'package:flutter/material.dart';

class Iletisim extends StatefulWidget {
  @override
  _IletisimState createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000725),
      appBar: AppBar(
        backgroundColor: Color(0xffd28005),
        title: Text('İletişim'),
      ),
      body: Column(
        children:<Widget> [
          Container(
            width: double.infinity,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height:20,),
                  Text('Souvenir Store',
                      style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic,fontSize: 30.0)),
                  SizedBox(height: 6,),
                ],
              ),
            ),
            decoration:BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(80)),
              color:Color(0xff369503),
            ),
          ),
              SizedBox(height: 80,),
              Text('Bizimle iletişime geçin',
              style: TextStyle(color: Colors.white,fontSize: 30.0)
              ),
              SizedBox(height: 35,),
              Text('Mail adresimiz: souvenirstore@gmail.com',
              style: TextStyle(color: Colors.white,fontSize: 20.0),),
              SizedBox(height: 10,),
              Text('Telefon Numaramız: +901234567890',
                style: TextStyle(color: Colors.white, fontSize: 20.0),),
            ],
          ),
        );
  }
}