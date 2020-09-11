import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Passbook extends StatefulWidget {
  @override
  _PassbookState createState() => _PassbookState();
}

class _PassbookState extends State<Passbook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('#E0E0E0'),
      body: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(color: Color(0xFFEDE7F6)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  'images/emptycart.png',
                  height: 250,
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 100, 8, 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      'total expenses',
                      style: TextStyle(
                        color: Hexcolor('#221347'),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '₹0',
                        style: TextStyle(
                          color: Hexcolor('#221347'),
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.orange,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Hexcolor('#221347'),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 20, 0),
                    child: Row(
                      children: [
                        Text(
                          'Sept 20',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Icon(
                      Icons.tune,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
