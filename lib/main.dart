import 'package:azamat/birinchi_barakcha.dart';
import 'package:azamat/ekinchi_barakcha.dart';
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
}
