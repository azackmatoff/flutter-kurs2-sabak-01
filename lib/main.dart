import 'package:flutter/material.dart';

void main() {
  runApp(MeninTirkemem());
}

class MeninTirkemem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BirinchiBarakcha(),
    );
  }
  //tirkeme kodtoru
}

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

  // function, method, funksiya => funksiyaAty(){}
  // return, type => funksiyaAty(){}
  // jonotosun, return, type => funksiyaAty(){}

  void koshuu() {
    // 0 + 1
    // meninSifram = meninSifram + 1;
    meninSifram++;

    // meninSifram = 1;
  }

  void kemituu() {
    meninSifram--;
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
        title: Text('Менин Биринчи Тиркемем'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('birinchi barakcha'),
          Text('birinchi barakcha'),
          Text('birinchi barakcha'),
          Text('birinchi barakcha'),
          Text('birinchi barakcha'),
          Text('birinchi barakcha'),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.amberAccent,
        child: Text('bul tubu'),
      ),
    );
  }
}
