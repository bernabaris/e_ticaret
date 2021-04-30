import 'package:e_ticaret/girisyap.dart';
import 'package:flutter/material.dart';

class Uyeol extends StatefulWidget {
  @override
  _UyeolState createState() => _UyeolState();
}

class _UyeolState extends State<Uyeol> {
  String ad = '';
  String soyad = '';
  String email = '';
  String password = '';

  void kontrol() {
    if ((email.length > 9) && (password.length > 5)) {
      var data1 = [];
      data1.add(ad);
      data1.add(soyad);
      data1.add(email);
      data1.add(password);
           Navigator.push(
             context,
             MaterialPageRoute(
               builder: (context) => Girisyap(),
               settings: RouteSettings(
                 arguments: data1,
               ),
             ));
    } else {
      Navigator.pushNamed(context, '/hata');
    }
  }

  void _adKaydet(String text) {
    setState(() {
      ad=text;
    });
  }

  void _soyadKaydet(String text) {
    setState(() {
      soyad=text;
    });
  }
  void _emailKaydet(String text) {
    setState(() {
      email=text;
    });
  }
  void _passwordKaydet(String text) {
    setState(() {
      password=text;
    });
  }
  @override
  Widget build(BuildContext context) {
    bool butonpasif = true;
    if ((email.length > 9) && (password.length > 5)) {
      butonpasif = false;
    } else {
      butonpasif = true;
    }
    return Scaffold(
      backgroundColor: Color(0xff000725),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xffd28005),
        title: Text('Üye Ol'),
      ),
      body: Column(
        children: <Widget> [
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
          Text('Üye olunuz.',
            style: TextStyle(color: Colors.white,fontSize: 20),
        ),
              ],
          ),
        ),
              decoration:BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(80)),
              color:Color(0xff369503),
              ),
          ),
              Theme(data: ThemeData(
                hintColor: Color(0xffd28005),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:30,left: 20,right: 20),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Adınızı giriniz',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
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
                  onChanged: (text) {
                    _adKaydet(text);
                  },
                ),
              ),
              ),
          Theme(data: ThemeData(
            hintColor: Color(0xffd28005),
          ),
            child: Padding(
              padding: const EdgeInsets.only(top:30,left: 20,right: 20),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Soyadınızı giriniz',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
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
                onChanged: (text) {
                  _soyadKaydet(text);
                },
              ),
            ),
          ),
          Theme(data: ThemeData(
            hintColor: Color(0xffd28005),
          ),
            child: Padding(
              padding: const EdgeInsets.only(top:30,left: 20,right: 20),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Mail adresinizi giriniz',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
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
                onChanged: (text) {
                  _emailKaydet(text);
                },
              ),
            ),
          ),
          Theme(data: ThemeData(
            hintColor: Color(0xffd28005),
          ),
            child: Padding(
              padding: const EdgeInsets.only(top:35,left: 20,right: 20),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Şifre oluşturunuz...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
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
                onChanged: (text) {
                  _passwordKaydet(text);
                },
              ),
            ),
          ),
          SizedBox(height:7,),
          Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: butonpasif ? null : kontrol,
                  child: Text('Üye ol'),
                ),
              ),
            ],
          ),
    );
  }
}