import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customAppBar extends PreferredSize {
  final Widget child;
  final double height;

  customAppBar({@required this.child, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      decoration: BoxDecoration(
          color: Color(0xFF221347),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          )),
      child: child,
    );
  }
}
