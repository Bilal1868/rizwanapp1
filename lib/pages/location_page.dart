import 'package:flutter/material.dart';
import 'package:rizwan_app/constant/const.dart';

class MyLocationPage extends StatefulWidget {
  const MyLocationPage({super.key});

  @override
  State<MyLocationPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLocationPage> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white38,
      body: ListView(
        children: [
          // Container(
          //   height: height * 0.60,
          //   width: width,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           fit: BoxFit.cover,
          //           image: AssetImage(
          //             'images/icons/img_location_banner.png',
          //           ))),
          //   child:
          //       Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //     Padding(
          //       padding: const EdgeInsets.symmetric(
          //           vertical: defaultSize1, horizontal: defaultSize1),
          //       child: Image.asset(
          //         'images/icons/ic_close_white.png',
          //         height: 25,
          //       ),
          //     ),
          //     SizedBox(
          //       height: height * 0.35,
          //     ),
          //     Container(
          //       width: width,
          //       height: height * 0.18,
          //       decoration: BoxDecoration(
          //         color: Colors.white38,
          //         borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(defaultSize1 + 5),
          //           topRight: Radius.circular(
          //             defaultSize1 + 5,
          //           ),
          //         ),
          //       ),
          //     )
          //   ]),
          // ),

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
                margin: EdgeInsets.only(top: height * 0.44),
                padding: EdgeInsets.symmetric(
                  vertical: defaultSize1 - 5,
                  horizontal: defaultSize1,
                ),
                height: height,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Select City',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: height * 0.05,
                          width: width * 0.27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'All',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: defaultSize,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: defaultSize,
                    ),
                    Container(
                      padding: EdgeInsets.all(defaultSize + 3),
                      height: height * 0.16,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(defaultSize1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 4,
                              spreadRadius: 2,
                              offset: Offset(0, 1),
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Prince Coffee',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '7071 Prince Saud Al Faisal, Al Faysaliyah District,\n3061,Jeddah 23441',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'images/icons/ic_call.png',
                                    height: 25,
                                  ),
                                  Text(
                                    '966539998999',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'Direction',
                                style: TextStyle(
                                  color: Colors.amberAccent,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: defaultSize1,
                    ),
                    Container(
                      padding: EdgeInsets.all(defaultSize + 3),
                      height: height * 0.16,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(defaultSize1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 4,
                              spreadRadius: 2,
                              offset: Offset(0, 1),
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Prince Coffee',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '7071 Prince Saud Al Faisal, Al Faysaliyah District,\n3061,Jeddah 23441',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'images/icons/ic_call.png',
                                    height: 25,
                                  ),
                                  Text(
                                    '966539998999',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'Direction',
                                style: TextStyle(
                                  color: Colors.amberAccent,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: defaultSize1,
                    ),
                    Container(
                      padding: EdgeInsets.all(defaultSize + 3),
                      height: height * 0.16,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(defaultSize1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 4,
                              spreadRadius: 2,
                              offset: Offset(0, 1),
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Prince Coffee',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '7071 Prince Saud Al Faisal, Al Faysaliyah District,\n3061,Jeddah 23441',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'images/icons/ic_call.png',
                                    height: 25,
                                  ),
                                  Text(
                                    '966539998999',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'Direction',
                                style: TextStyle(
                                  color: Colors.amberAccent,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
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
