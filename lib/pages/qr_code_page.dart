import 'package:flutter/material.dart';
import 'package:rizwan_app/constant/const.dart';

class MyQrCodePage extends StatefulWidget {
  const MyQrCodePage({super.key});

  @override
  State<MyQrCodePage> createState() => _MyQrCodePageState();
}

class _MyQrCodePageState extends State<MyQrCodePage> {
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
            padding: EdgeInsets.symmetric(
                vertical: defaultSize1, horizontal: defaultSize1),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'images/icons/ic_close_white.png',
                    height: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: defaultSize,
              horizontal: defaultSize1,
            ),
            margin: EdgeInsets.symmetric(horizontal: defaultSize1),
            height: height * 0.17,
            width: width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(defaultSize1)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Present this ID QR code Scanner'),
                Image.asset(
                  'images/icons/img_qr_dummy.png',
                  width: 250,
                ),
                Text('6 7 8 6 5 4 3 8 7 4 8 6 5 4 3 8')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: defaultSize,
              horizontal: defaultSize1,
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
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '= 50 SAR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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
          Container(
            padding: EdgeInsets.symmetric(
              vertical: defaultSize1,
              horizontal: defaultSize1,
            ),
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
                Text(
                  'Transaction history',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: defaultSize,
                ),
                Container(
                  padding: EdgeInsets.all(defaultSize),
                  height: height * 0.095,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(defaultSize)),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/icons/ic_decline_recipts.png',
                        width: 45,
                      ),
                      SizedBox(
                        width: defaultSize,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: defaultSize / 2,
                          ),
                          Text(
                            'Declined Receipts',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Your scanned receipts that were declined',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: defaultSize1 * 3.6),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 22,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: defaultSize,
                ),
                Text(
                  'This Month',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Received on May 8 2023',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '+100 pt',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 196, 24),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Redeemed on May 8 2023',
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 240, 8, 85),
                      ),
                    ),
                    Text(
                      '500 pt',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 240, 8, 85),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Received on May 4 2023',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '+100 pt',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 196, 24),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: defaultSize + 5,
                ),
                Text(
                  'Last Month',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Received on Apr 16 2023',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '+100 pt',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 196, 24),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Redeemed on Apr 16 2023',
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 240, 8, 85),
                      ),
                    ),
                    Text(
                      '-200 pt',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 240, 8, 85),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Received on Apr 18 2023',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '+100 pt',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 196, 24),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: defaultSize + 5,
                ),
                Text(
                  'March',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Received on Mar 2 2023',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '+100 pt',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 196, 24),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reversed on Mar 2 2023',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '200 pt',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 196, 24),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Received on Mar 1 2023',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '+100 pt',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 196, 24),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: defaultSize + 5,
                ),
                Text(
                  'Older',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Received on Feb 1 2023',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '+100 pt',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 196, 24),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Redeemed on Feb 1 2023',
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 240, 8, 85),
                      ),
                    ),
                    Text(
                      '-400 pt',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 240, 8, 85),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Received on Jan 12 2023',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '+100 pt',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 196, 24),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Received on Jan 10 2023',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '+100 pt',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 196, 24),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Received on Jan 5 2023',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '+100 pt',
                      style: TextStyle(
                          color: Color.fromARGB(255, 121, 196, 24),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
