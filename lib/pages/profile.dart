import 'package:flutter/material.dart';
import 'package:rizwan_app/constant/const.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: defaultSize3 + defaultSize,
              right: defaultSize1 + 5,
              left: defaultSize1 + 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'images/icons/ic_close_white.png',
                  height: 25,
                ),
                Image.asset(
                  'images/icons/ic_notification_active.png',
                  height: defaultSize1 + 5,
                ),
              ],
            ),
          ),
          SizedBox(
            height: defaultSize,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultSize1),
            height: height * 0.70,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                defaultSize,
              ),
            ),
            child: Column(
              children: [
                profileContainer(height: height, width: width),
                SizedBox(
                  height: defaultSize1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultSize,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Profile settings',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: defaultSize / 2,
                ),
                Divider(
                  color: Colors.grey.shade200,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultSize,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Change language',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: defaultSize / 2,
                ),
                Divider(
                  color: Colors.grey.shade200,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultSize,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Contact Us',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: defaultSize / 2,
                ),
                Divider(
                  color: Colors.grey.shade200,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultSize,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Feedback',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: defaultSize / 2,
                ),
                Divider(
                  color: Colors.grey.shade200,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultSize,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Help',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: defaultSize / 2,
                ),
                Divider(
                  color: Colors.grey.shade200,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultSize,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign out',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: defaultSize / 2,
                ),
                Divider(
                  color: Colors.grey.shade200,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class profileContainer extends StatelessWidget {
  const profileContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultSize + 5),
      margin: EdgeInsets.all(defaultSize + 5),
      height: height * 0.26,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(defaultSize),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(defaultSize2 + defaultSize),
                child: Image.asset(
                  'images/icons/img_profile.png',
                  height: defaultSize2 + 5,
                ),
              ),
              SizedBox(
                width: defaultSize,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sarah Abubakar',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '9667865483455',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: defaultSize2 * 2.0,
              ),
              Image.asset(
                'images/icons/ic_profile_qr.png',
                height: 42,
              ),
            ],
          ),
          SizedBox(
            height: defaultSize,
          ),
          Text(
            'Lorem ipsum dolers',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: defaultSize / 2,
          ),
          Container(
            height: 6,
            width: width,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 6,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                ),
                Container(
                  height: 6,
                  width: defaultSize2 * 2,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 103, 175, 9),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: defaultSize / 3,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(
                    'images/icons/ic_vip.png',
                    height: 10,
                  ),
                  Text(
                    '25,000',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 9,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: defaultSize / 2,
              ),
              SizedBox(
                width: defaultSize2 + 5,
              ),
              Text(
                '10000',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade400,
                  fontSize: 9,
                ),
              ),
              SizedBox(
                height: defaultSize / 2,
              ),
              SizedBox(
                width: defaultSize2 + 5,
              ),
              Text(
                '5000',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade400,
                  fontSize: 9,
                ),
              ),
              SizedBox(
                height: defaultSize / 2,
              ),
              SizedBox(
                width: defaultSize2 + 5,
              ),
              Text(
                '1000',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade400,
                  fontSize: 9,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey.shade200,
          ),
          SizedBox(
            height: defaultSize / 2,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Lorem Ipsum dolor sit ammet consetetur sadipscing eliter',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.amberAccent,
                fontSize: 8,
              ),
            ),
          )
        ],
      ),
    );
  }
}
