import 'package:flutter/material.dart';

class CustomRectButton extends StatelessWidget {
  const CustomRectButton({
    Key key,
    @required this.number,
    @required this.onTap,
  }) : super(key: key);

  final int number;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
              Text('$number'),
            ],
          ),
        ),
      ),
    );
  }
}
