import 'package:flutter/material.dart';

import '../constant/const.dart';
import 'qr_code_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: mainColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: defaultSize2 - 10,
              left: defaultSize1,
              top: defaultSize1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(defaultSize2 + defaultSize),
                  child: Image.asset(
                    'images/icons/img_profile.png',
                    height: defaultSize2 + 5,
                  ),
                ),
                Image.asset(
                  'images/icons/ic_notification_active.png',
                  height: defaultSize3 / 2,
                )
              ],
            ),
          ),
          SizedBox(height: defaultSize - 3),
          Padding(
            padding: const EdgeInsets.only(
              right: defaultSize1,
              left: defaultSize1,
              //top: defaultSize2 + defaultSize,),
            ),
            child: Text(
              'Hi Sarah',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: defaultSize - 3),
          Container(
            margin: EdgeInsets.only(
              right: defaultSize3 * 4.7,
              left: defaultSize1,
            ),
            height: 7,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 198, 39),
                borderRadius: BorderRadius.circular(3)),
          ),
          SizedBox(height: defaultSize - 3),
          Padding(
            padding: const EdgeInsets.only(
              right: defaultSize1,
              left: defaultSize1,
              //top: defaultSize2 + defaultSize,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Point Balance',
                      style: TextStyle(
                        color: Color.fromARGB(221, 82, 170, 73),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '5000.44',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '= 50 SAR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'images/icons/img_bean.png',
                  height: defaultSize3 * 2,
                ),
              ],
            ),
          ),
          SizedBox(height: defaultSize),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultSize1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  height: height * 0.065,
                  width: width * 0.43,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => MyQrCodePage()));
                        },
                        child: Image.asset(
                          'images/icons/ic_home_qr.png',
                          width: 75,
                        ),
                      ),
                      Text(
                        'Your ID',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  height: height * 0.065,
                  width: width * 0.43,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(221, 75, 156, 66),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'images/icons/ic_home_scan.png',
                      ),
                      Text(
                        'Submit Receipt',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: defaultSize1),
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.elliptical(100, 48),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: defaultSize1 + 4,
                    right: defaultSize1 + 4,
                    left: defaultSize1 + 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Offers for you',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.amber,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultSize + 5,
                    vertical: 5,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: height * 0.37,
                        width: width * 0.51,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: mainColor,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(defaultSize1),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(defaultSize1 - 4),
                              child: Image.asset(
                                'images/icons/img_deal_1_banner.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: defaultSize1 - 6,
                              left: defaultSize1,
                              child: Container(
                                height: height * 0.037,
                                width: width * 0.27,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius:
                                      BorderRadius.circular(defaultSize1),
                                ),
                                child: Center(
                                  child: Text(
                                    'Deal of the day',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: height * 0.17,
                                width: 201.5,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(defaultSize1),
                                      bottomRight:
                                          Radius.circular(defaultSize1),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: defaultSize1,
                                      horizontal: defaultSize),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Offers',
                                        style: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '20% Discount',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      Text(
                                        'Lorem ipsum doleres',
                                        style: TextStyle(
                                            color: Colors.grey.shade900,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: defaultSize, horizontal: defaultSize),
                            height: height * 0.18,
                            width: width * 0.36,
                            decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(defaultSize1),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: Image.asset(
                                    'images/icons/img_deal_thumb_3.png',
                                    height: 60,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Lorem Ipsum',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '1900 Points/19SAR',
                                      style: TextStyle(
                                        color: Colors.white60,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 9,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: defaultSize,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: defaultSize, horizontal: defaultSize),
                            height: height * 0.18,
                            width: width * 0.36,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(defaultSize1),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: Image.asset(
                                    'images/icons/img_deal_thumb_4.png',
                                    height: 60,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pechuga a la plancha',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text(
                                      '1900 Points/9SAR',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 9,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
