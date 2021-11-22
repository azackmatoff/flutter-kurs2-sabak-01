import 'package:flutter/material.dart';

class EkinchiBarakcha extends StatelessWidget {
  EkinchiBarakcha({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Ekinchi Barak StatelessWidget'),
        centerTitle: true,
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20.0),
        ],
      ),
      body: Container(
        color: Colors.redAccent,
        child: Center(
          child: Card(
            elevation: 12.0,
            color: Colors.amberAccent,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 48.0, bottom: 48.0, left: 100, right: 100),
              child:
                  Text('Bul ekinchi barak', style: TextStyle(fontSize: 20.0)),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80.0,
        width: MediaQuery.of(context).size.width,
        color: Colors.orangeAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.usb),
            Icon(Icons.access_alarm),
            Icon(Icons.portable_wifi_off),
            Icon(Icons.search),
          ],
        ),
      ),
    );
  }
}
