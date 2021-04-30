import 'package:e_ticaret/girisyap.dart';
import 'package:flutter/material.dart';
import 'package:e_ticaret/uyeol.dart';
import 'package:e_ticaret/hakkinda.dart';
import 'package:e_ticaret/hata.dart';
import 'package:e_ticaret/cikisyap.dart';
import 'package:e_ticaret/favorilerim.dart';
import 'package:e_ticaret/iletisim.dart';
import 'package:e_ticaret/sepetim.dart';
import 'package:e_ticaret/profilim.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e-Ticaret',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => MyHomePage(),
        '/uyeol':(context) => Uyeol(),
        '/girisyap':(context) => Girisyap(),
        '/hakkinda': (context) => Hakkinda(),
        '/hata':(context) => Hata(),
        '/cikisyap':(context) => Cikisyap(),
        '/favorilerim':(context) => Favorilerim(),
        '/iletisim':(context) => Iletisim(),
        '/sepetim':(context) => Sepetim(),
        '/profilim':(context) => Profilim()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff000725),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget> [
          Container(
            width: double.infinity,
            height: 180,
          child: Padding(
            padding: EdgeInsets.all(20),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
           SizedBox(height: 50,),
            Text(
              ' Souvenir Mağazası',
              style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic,fontSize:35),
            ),
            SizedBox(height: 26,),
            Text(
              'Hesabınıza giriş yapınız.',
              style: TextStyle(color: Colors.white,fontSize: 20),
            ),
            ],
          ),
          ),
            decoration: BoxDecoration(borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(125)),
              color: Color(0xff369503),
            ),
          ),
          Theme(
              data: ThemeData(
                hintColor: Color(0xffd28005),
              ),
              child: Padding(
              padding: EdgeInsets.only(top:50,left: 20,right: 20),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration:  InputDecoration(
                  hintText: 'Email...',
                  border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15) ,
                    borderSide: BorderSide(color: Colors.deepPurple,width: 1),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white,width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.deepPurple,width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.deepPurple,width: 1),
                  ),
                ),
              ),
            ),
          ),
          Theme(
            data: ThemeData(
              hintColor: Color(0xffd28005),
            ),
          child: Padding(
              padding:  EdgeInsets.only(top: 50,left: 20,right: 20),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Şifre...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.deepPurple,width: 1),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.deepPurple,width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.deepPurple,width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.deepPurple,width: 1),
                  ),
                ),
              ),
            ),
          ),
            SizedBox(height:20,),
          Padding(
            padding:  EdgeInsets.only(left: 20,right: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Girisyap()),
                );
              },
              child: Text('Giriş Yap',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            ),
          ),
            SizedBox(height: 20,),
            Container(
              height: 1,
              width: double.infinity,
              color: Color(0xffd28005),
            ),
            SizedBox(height: 20,),
            Text(
              'Üyeliğiniz yok mu?', style:TextStyle(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Uyeol()),
                  );
                },
                child: Text('Üye Ol'),
              ),
            ),
          ],
        ),
      );
  }
}
