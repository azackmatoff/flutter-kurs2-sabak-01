import 'package:azamat/screens/second_screen.dart';
import 'package:azamat/widgets/custom_app_bar.dart';
import 'package:azamat/widgets/custom_button.dart';
import 'package:azamat/widgets/custom_rect_button.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
              'Тапшырма 01',
              actions: [
                Row(
                  children: [
                    Icon(Icons.search),
                    const SizedBox(width: 8.0),
                    newMethod(),
                  ],
                ),
                const SizedBox(width: 18.0),
              ],
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomRectButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondScreen(
                            san: _number,
                          ),
                        ),
                      );
                    },
                    number: _number,
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        onTap: _dec,
                        iconText: '-',
                      ),
                      const SizedBox(width: 20.0),
                      CustomButton(
                        onTap: _inc,
                        iconText: '+',
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

//Bul jakshi refactoring emes
  Text newMethod() {
    return Text(
      'data',
      style: TextStyle(color: Colors.black),
    );
  }

  void _dec() {
    _number--;
    setState(() {});
  }

  void _inc() {
    setState(() {
      _number++;
    });
  }
}
