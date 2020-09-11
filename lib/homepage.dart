import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  Color mainColor = Hexcolor('#221347');
  //String st = card_giftcard;
  //IconData iocn = Icons.data_usage;
  Expanded smallCardExpanded(String cardText, IconData iconData) {
    return Expanded(
      child: Container(
        height: 120,
        margin: EdgeInsets.all(5),
        child: Card(
          elevation: 5,
          color: Hexcolor('#ffffff'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Hexcolor('#F2F1F8'),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                    ),
                    child: Icon(
                      iconData,
                      color: mainColor,
                    )),
                Text(
                  '$cardText',
                  style: TextStyle(
                    color: mainColor,
                    letterSpacing: 1.5,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 5,
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Expanded smallCardTwoExpanded(String darkText, String lightText) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Card(
          elevation: 5,
          color: Hexcolor('#ffffff'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        '$darkText',
                        style: TextStyle(
                            color: mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.orange,
                      size: 24,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text('$lightText'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding fiveVerticalCards() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 20),
      child: Card(
        elevation: 5,
        color: Hexcolor('#ffffff'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 150,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset('images/cardimage.png'),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'benefits of repayments!',
                        style: TextStyle(
                            color: mainColor, letterSpacing: 1.1, fontSize: 14),
                      ),
                      Text(
                        'Get assured scratch \ncard on timely\nrepayment!',
                        style: TextStyle(
                            color: mainColor,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        'KNOW MORE',
                        style: TextStyle(
                            color: Colors.orange,
                            letterSpacing: 1.1,
                            fontSize: 14),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('#E0E0E0'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                shadowColor: Hexcolor('#8a795d'),
                elevation: 15,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
                color: Hexcolor('#221347'),
                child: Container(
                  height: 220,
                  padding: EdgeInsets.all(30),
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'card balance',
                        style: TextStyle(color: Hexcolor('#ffffff')),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '₹25,000',
                        style: TextStyle(
                          color: Hexcolor('#ffffff'),
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'xxxx xxxx xxxx 3001',
                            style: TextStyle(
                              color: Hexcolor('#ffffff'),
                              letterSpacing: 2,
                            ),
                          ),
                          Icon(
                            Icons.dashboard,
                            color: Colors.grey,
                            size: 25,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        'SUMITH SREE KUMAR',
                        style: TextStyle(
                          color: Hexcolor('#ffffff'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  smallCardExpanded('STORE \nVOUCHERS', Icons.card_giftcard),
                  smallCardExpanded(
                      'TRANSFER \nTO BANK', Icons.account_balance),
                  smallCardExpanded('TRANSFER \nTO PAYTM', Icons.local_atm),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    height: 2,
                    width: double.maxFinite,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Hexcolor('#E1DFEE'),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  smallCardTwoExpanded('₹0', 'total spends'),
                  smallCardTwoExpanded('05 Oct 20', 'Next due date'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Hexcolor('#E1DFEE'),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(children: [
                    Expanded(child: Image.asset('images/shopping.png')),
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(10))),
                      height: 50,
                      child: Center(
                        child: Text(
                          'ONLY you get to decide who can join slice',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              fiveVerticalCards(),
              fiveVerticalCards(),
              fiveVerticalCards(),
              fiveVerticalCards(),
              fiveVerticalCards(),
            ],
          ),
        ),
      ),
    );
  }
}
