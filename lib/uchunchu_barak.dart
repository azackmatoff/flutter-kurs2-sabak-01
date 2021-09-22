import 'package:azamat/tortunchu_barak.dart';
import 'package:flutter/material.dart';

class UchunchuBarak extends StatefulWidget {
  UchunchuBarak({Key key}) : super(key: key);

  @override
  _UchunchuBarakState createState() => _UchunchuBarakState();
}

class _UchunchuBarakState extends State<UchunchuBarak> {
  int _san = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Тапшырма 01",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TortunchuBarak(
                            san: _san,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 28.0,
                        right: 28.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff46F3F3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        height: 50,
                        // color: Color(0xff46F3F3), //decoration bolgonu uchun bul jerde tus bolbosh kerek
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'SAN: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('$_san'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: _kemituu,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff005EA6),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          height: 50,
                          width: 80,
                          // color: Color(0xff46F3F3), //decoration bolgonu uchun bul jerde tus bolbosh kerek
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              size: 40.0,
                              color: Colors.white,
                            ),

                            // Text(
                            //   '-',
                            //   style: TextStyle(
                            //     fontSize: 40.0,
                            //     color: Colors.white,
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      GestureDetector(
                        onTap: _koshuu,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff005EA6),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          height: 50,
                          width: 80,
                          // color: Color(0xff46F3F3), //decoration bolgonu uchun bul jerde tus bolbosh kerek
                          child: Center(
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _kemituu() {
    _san--;

    setState(() {});
  }

  void _koshuu() {
    setState(() {
      _san++;
    });
  }
}
