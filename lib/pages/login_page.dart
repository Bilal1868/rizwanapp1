import 'package:flutter/material.dart';
import 'package:rizwan_app/constant/const.dart';
import 'package:rizwan_app/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultSize1),
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'images/icons/ic_close_black.png',
                height: 30,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                'Welcome to',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: defaultSize / 2,
              ),
              Image.asset(
                'images/icons/img_logo.png',
                height: 100,
              ),
              SizedBox(
                height: defaultSize,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: defaultSize3 + defaultSize1),
                height: 1.5,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              SizedBox(
                height: defaultSize / 2,
              ),
              Text('LOYALTY APP',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(
                height: defaultSize / 2,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: defaultSize3 + defaultSize1),
                height: 1.5,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              SizedBox(
                height: defaultSize3,
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultSize1 + defaultSize,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your registered number',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                          ),
                          borderRadius: BorderRadius.circular(defaultSize),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                          ),
                          borderRadius: BorderRadius.circular(defaultSize),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: defaultSize,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'New Password',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade400,
                            ),
                            borderRadius: BorderRadius.circular(defaultSize),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                              ),
                              borderRadius:
                                  BorderRadius.circular(defaultSize))),
                    ),
                    SizedBox(
                      height: defaultSize,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Repeat password',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade400,
                            ),
                            borderRadius: BorderRadius.circular(defaultSize),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                              ),
                              borderRadius:
                                  BorderRadius.circular(defaultSize))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(defaultSize1 - 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Password Criteria',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700)),
                          Text(
                            'Criteria 1',
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            'Criteria 1',
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            'Criteria 1',
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            'Criteria 1',
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: defaultSize,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => MyMainPage()));
                        },
                        height: defaultSize2,
                        minWidth: width * 0.40,
                        color: mainColor,
                        shape: StadiumBorder(),
                        child: Text('Submit',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
