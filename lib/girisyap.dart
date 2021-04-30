import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_ticaret/hakkinda.dart';
import 'package:e_ticaret/cikisyap.dart';
import 'package:e_ticaret/favorilerim.dart';
import 'package:e_ticaret/iletisim.dart';
import 'package:e_ticaret/sepetim.dart';
import 'package:flutter/widgets.dart';
import 'package:e_ticaret/profilim.dart';



class Girisyap extends StatefulWidget {
  @override
  _GirisyapState createState() => _GirisyapState();
}

class _GirisyapState extends State<Girisyap> {
  String ad = '';
  String soyad = '';
  String email = '';
  String password = '';

  void ProfilimeYolla(){
    var data1 = [];
    data1.add(ad);
    data1.add(soyad);
    data1.add(email);
    data1.add(password);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Profilim(),
          settings: RouteSettings(
            arguments: data1,
          ),
        ));
  }
  @override
  Widget build(BuildContext context) {
    var data1 = [];
    data1 = ModalRoute.of(context).settings.arguments;
    ad = data1[0];
    soyad = data1[1];
    email = data1[2];
    password = data1[3];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff369503),
        title: Text('Anasayfa'),

      ),
      drawer: Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 227,
          color: Color(0xff000725),
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 30)),
              SizedBox(height: 10,),
              Text(ad+ ' '+ soyad,style: TextStyle(fontSize:15,color: Colors.white),),
              Text(email,style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        ListTile(
          title: Text('Sepetim'),
          leading: Icon(Icons.shopping_basket),
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Sepetim()));
          },
        ),
        ListTile(
          title: Text('Favorilerim'),
          leading: Icon(Icons.favorite),
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Favorilerim()));
          },
        ),
        ListTile(
          title: Text('İletişim'),
          leading: Icon(Icons.mail),
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Iletisim()));
          },
        ),
        ListTile(
          title: Text('Profilim'),
          leading: Icon(Icons.person),
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Profilim()));
          },
        ),

      ],
      ),
      ),
      body: Center(
        child: Column(
            children: <Widget>[
               buildBanner(),
               buildBanner2(),
              buildBanner3(),
              buildBanner4(),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hakkinda()),
                );
              },
              child: Text('Hakkında'),
            ),
          ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text('Anasayfaya Dön'),
                ),
              ),
              Padding (
                padding: const EdgeInsets.symmetric(vertical:16.0 ),
                  child: ElevatedButton.icon(
                  onPressed: () {
                     Navigator.push(
                       context,
                     MaterialPageRoute(builder: (context) => Cikisyap()),
                     );
                   },
                    icon: Icon(Icons.person),
                    label: Text('Çıkış Yap'))
                ),

          
    ],
    ),
    ),
    );
  }
}
Widget buildBanner(){
  return Padding(
    padding:  EdgeInsets.only(top:25),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24,right: 36,top: 14,bottom: 18),
      decoration: BoxDecoration(
        color:  Color(0xff000725),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sulu Boya',
                style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5,),
              Text('21 ₺',
                style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Sepete Ekle',style: TextStyle(color: Colors.white),),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Favorilere Ekle',style: TextStyle(color: Colors.white),),
          ),

        ],
      ),
    ),
  );
}
Widget buildBanner2(){
  return Padding(
    padding:  EdgeInsets.only(top:25),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24,right: 36,top: 14,bottom: 18),
      decoration: BoxDecoration(
        color:  Color(0xff000725),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kuru Boya',
                style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5,),
              Text('17 ₺',
                style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Sepete Ekle',style: TextStyle(color: Colors.white),),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Favorilere Ekle',style: TextStyle(color: Colors.white),),
          ),

        ],
      ),
    ),
  );
}
Widget buildBanner3(){
  return Padding(
    padding:  EdgeInsets.only(top:25),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24,right: 36,top: 14,bottom: 18),
      decoration: BoxDecoration(
        color:  Color(0xff000725),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pastel Boya',
                style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5,),
              Text('24 ₺',
                style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Sepete Ekle',style: TextStyle(color: Colors.white),),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Favorilere Ekle',style: TextStyle(color: Colors.white),),
          ),

        ],
      ),
    ),
  );
}
Widget buildBanner4(){
  return Padding(
    padding:  EdgeInsets.only(top:25),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24,right: 36,top: 14,bottom: 18),
      decoration: BoxDecoration(
        color:  Color(0xff000725),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Fırça Seti',
                style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5,),
              Text('32 ₺',
                style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Sepete Ekle',style: TextStyle(color: Colors.white),),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Color(0xffd28005),
            ),
            child: Text('Favorilere Ekle',style: TextStyle(color: Colors.white),),
          ),

        ],
      ),
    ),
  );
}