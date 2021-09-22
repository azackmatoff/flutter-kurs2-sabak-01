import 'package:flutter/material.dart';

class BirinchiBarakcha extends StatefulWidget {
  BirinchiBarakcha({Key key}) : super(key: key);

  @override
  _BirinchiBarakchaState createState() => _BirinchiBarakchaState();
}

class _BirinchiBarakchaState extends State<BirinchiBarakcha> {
  // bul variable, peremennye

  // dynamic, illivoy tur
  // number, tsifra, san => num
  // 10 => integer => int
  // 10.45 => double => double
  // soz, tekst, text => String
  // boolean, kata je tuura => bool (= true, false)

  // declare variable, obyavleyam perem, perem jariyalayt

  int meninSifram = 0;
  String bulAdamAty = 'Azat';

  // function, method, funksiya => funksiyaAty(){}
  // return, type => funksiyaAty(){}
  // jonotosun, return, type => funksiyaAty(){}

  void koshuu() {
    // 0 + 1
    // meninSifram = meninSifram + 1;
    meninSifram++;

    setState(() {});

    // meninSifram = 1;
  }

  void kemituu() {
    setState(() {
      meninSifram--;
    });
  }

  bool uylongunsunbu(String adam) {
    if (adam == 'erkek') {
      return true;
    } else {
      return false;
    }
  }

  String almaninAtyEmne() {
    return 'apple';
  }

  Color almaninTusuEmne() {
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Тапшырма 01'),
        centerTitle: true,
      ),
      body: Scaffold(
        appBar: AppBar(
          title: Text('Тапшырма 01'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.red,
                    height: 400.0,
                  ),
                  Positioned(
                    top: 25.0,
                    right: 15.0,
                    bottom: 150.0,
                    left: 100.0,
                    child: Container(
                      color: Colors.black,
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                ],
              ),
              Text('Тапшырма 01'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'San: $meninSifram',
                    style: TextStyle(fontSize: 40.0),
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          koshuu();
                          print('san: $meninSifram');
                        },
                        child: Icon(
                          Icons.add,
                          size: 60.0,
                        ),
                      ),
                      SizedBox(width: 40.0),
                      GestureDetector(
                        onTap: () {
                          kemituu();
                          print('san: $meninSifram');
                        },
                        child: Icon(
                          Icons.remove,
                          size: 60.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 30,
          color: Colors.amberAccent,
          child: Text('bul bottomNavigationBar'),
        ),
      ),
      bottomNavigationBar: Container(
        height: 30,
        color: Colors.amberAccent,
        child: Text('bul bottomNavigationBar'),
      ),
    );
  }
}
