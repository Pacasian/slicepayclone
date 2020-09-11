import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slicepayclone/customAppBar.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Card smallCards() {
    return Card(
      elevation: 15,
      color: Colors.white,
      child: Container(
        width: double.maxFinite,
        height: 100,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Big One',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Small one'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF221347),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('#E0E0E0'),
      appBar: customAppBar(
        height: 180,
        child: SafeArea(
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Sumith Sree Kumar',
                          style: TextStyle(
                            fontSize: 17,
                            letterSpacing: 1.1,
                            color: Colors.white,
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.white,
                          indent: 0,
                          endIndent: 40,
                        ),
                        Text(
                          'Current balance',
                          style: TextStyle(
                            fontSize: 12,
                            letterSpacing: 1.1,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '₹17,500',
                              style: TextStyle(
                                fontSize: 19,
                                letterSpacing: 1.1,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              '/20,000',
                              style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 1.1,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.person,
                        size: 80,
                        color: Color(0xff221347),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              smallCards(),
              smallCards(),
              smallCards(),
              smallCards(),
              smallCards(),
              smallCards(),
              smallCards(),
              smallCards(),
            ],
          ),
        ),
      ),
    );
  }
}

/*
 */
/*
Container(
              height: 180,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Color(0xFF221347),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
              child: SafeArea(
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Sumith Sree Kumar',
                          style: TextStyle(
                            fontSize: 17,
                            letterSpacing: 1.1,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 8, 10, 8),
                          child: Divider(
                            thickness: 2,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 8, 0, 5),
                          child: Row(
                            children: [
                              Text(
                                '17,500',
                                style: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 1.1,
                                  color: Colors.green,
                                ),
                              ),
                              Text(
                                '/20,000',
                                style: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 1.1,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                    Expanded(child: Image.asset('images/shopping.png')),
                  ],
                ),
              ),
            ),
 */
