import 'package:flutter/material.dart';

import '../../responsive_helper.dart';

class PicturesPage extends StatefulWidget {
  const PicturesPage({super.key});

  @override
  State<PicturesPage> createState() => _PicturesPageState();
}

class _PicturesPageState extends State<PicturesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        mobile: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.orange])),
          child: SafeArea(
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 93,
                          height: 55,
                          child: Image(
                            image: AssetImage("assets/pngegg.png"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 1,
                            width: 360,
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Add 2 or more pictures.",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: "Helvetica",
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 1,
                      width: 360,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 45,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white, width: 1.5),
                          color: Colors.white,
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double>(0),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PicturesPage()));
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "NEXT STEP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Helvetica",
                                  fontSize: 16,
                                  color: Colors.black87),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        tab: Container(),
        desktop: Container(),
      ),
    );
  }
}
