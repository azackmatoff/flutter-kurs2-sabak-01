import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    this.iconText,
    this.onTap,
  }) : super(key: key);

  final String iconText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
            iconText,
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
