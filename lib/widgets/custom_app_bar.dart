import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;
  final bool centerTitle;
  final bool automaticallyImplyLeading;
  final Widget leading;
  final List<Widget> actions;

  CustomAppBar(
    this.title, {
    Key key,
    this.centerTitle = true,
    this.automaticallyImplyLeading = false,
    this.leading,
    this.actions,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      leading: leading,
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      actions: actions,
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: centerTitle,
    );
  }
}
