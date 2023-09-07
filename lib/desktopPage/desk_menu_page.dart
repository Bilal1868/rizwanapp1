import 'package:flutter/material.dart';

import '../constant/const.dart';

class DeskMenuPage extends StatefulWidget {
  const DeskMenuPage({super.key});

  @override
  State<DeskMenuPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DeskMenuPage> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                'images/icons/img_location_banner.png',
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: defaultSize1,
                  left: defaultSize2 - 5,
                ),
                child: Image.asset(
                  'images/icons/ic_close_white.png',
                  height: 25,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.51),
                padding: EdgeInsets.symmetric(
                  vertical: defaultSize1 - 5,
                  horizontal: defaultSize1,
                ),
                height: height * 2,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultSize1 + 5),
                    topRight: Radius.circular(
                      defaultSize1 + 5,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Coffee Menu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'images/icons/img_category_1.png',
                              //fit: BoxFit.cover,
                              height: 120,
                            ),
                            Positioned(
                              bottom: 6,
                              left: defaultSize + 3,
                              child: Container(
                                height: 33,
                                width: 78.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Hot Drinks',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              'images/icons/img_category_1.png',
                              //fit: BoxFit.cover,
                              height: 120,
                            ),
                            Positioned(
                              bottom: 6,
                              left: defaultSize + 3,
                              child: Container(
                                height: 33,
                                width: 78.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Ice Drinks',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              'images/icons/img_category_1.png',
                              //fit: BoxFit.cover,
                              height: 120,
                            ),
                            Positioned(
                              bottom: 6,
                              left: defaultSize + 3,
                              child: Container(
                                height: 33,
                                width: 78.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Sandwichs',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              'images/icons/img_category_1.png',
                              //fit: BoxFit.cover,
                              height: 120,
                            ),
                            Positioned(
                              bottom: 6,
                              left: defaultSize + 3,
                              child: Container(
                                height: 33,
                                width: 78.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(4),
                                    bottomRight: Radius.circular(4),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Cookies',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: defaultSize,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            padding: EdgeInsets.all(defaultSize - 4),
                            height: height * 0.42,
                            width: width * 0.40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(defaultSize),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                    offset: Offset(0, 1),
                                  )
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment:
                              //     MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('images/icons/img_product_1.png'),
                                Text(
                                  'Drink Name',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'Lorem ipsum doleres lorem',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text('10-15 SAR',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ))
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.all(defaultSize - 4),
                          height: height * 0.42,
                          width: width * 0.40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(defaultSize),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                  offset: Offset(0, 1),
                                )
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment:
                            //     MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('images/icons/img_product_1.png'),
                              Text(
                                'Drink Name',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Lorem ipsum doleres lorem',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text('10-15 SAR',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: defaultSize1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            padding: EdgeInsets.all(defaultSize - 4),
                            height: height * 0.42,
                            width: width * 0.40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(defaultSize),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                    offset: Offset(0, 1),
                                  )
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment:
                              //     MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('images/icons/img_product_1.png'),
                                Text(
                                  'Drink Name',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'Lorem ipsum doleres lorem',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text('10-15 SAR',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ))
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.all(defaultSize - 4),
                          height: height * 0.42,
                          width: width * 0.40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(defaultSize),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                  offset: Offset(0, 1),
                                )
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment:
                            //     MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('images/icons/img_product_1.png'),
                              Text(
                                'Drink Name',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Lorem ipsum doleres lorem',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text('10-15 SAR',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
