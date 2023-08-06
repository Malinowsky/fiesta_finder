import 'package:fiesta_finder/responsive_helper.dart';
import 'package:flutter/material.dart';

class AdvertisingPages extends StatefulWidget {
  const AdvertisingPages({super.key});

  @override
  State<AdvertisingPages> createState() => _AdvertisingPagesState();
}

class _AdvertisingPagesState extends State<AdvertisingPages> {
  List<String> profileImages = [
    "image1.jpg",
    "image2.jpg",
    "image3.jpg",
    // Add more image URLs here
  ];

  int currentIndex = 0;

  void _nextProfile() {
    setState(() {
      currentIndex = (currentIndex + 1) % profileImages.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        mobile: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.orange])),
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          // Ustawienie tła jako przezroczystego
                          shadowColor: Colors.transparent,
                          // Ustawienie koloru cienia jako przezroczystego
                          shape: RoundedRectangleBorder(
                            side: BorderSide.none, // Usunięcie krawędzi
                          ),
                        ),
                        child: Container(
                          width: 35,
                          height: 35,
                          child: Image(
                            image: AssetImage("assets/user.png"),
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 55,
                        child: Image(
                          image: AssetImage("assets/pngegg.png"),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          // Ustawienie tła jako przezroczystego
                          shadowColor: Colors.transparent,
                          // Ustawienie koloru cienia jako przezroczystego
                          shape: RoundedRectangleBorder(
                            side: BorderSide.none, // Usunięcie krawędzi
                          ),
                        ),
                        child: Container(
                          width: 35,
                          height: 35,
                          child: Image(
                            image: AssetImage("assets/chat.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 405,
                    height: 605,
                    margin: EdgeInsets.only(top: 15, left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image1.jpg"),
                        )),
                    child: Align(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 15,left: 15),
                            alignment: Alignment.topLeft,
                            child: Text(
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "Helvetica",
                                  fontWeight: FontWeight.bold),
                              "1/3",
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: "Helvetica",
                                    fontWeight: FontWeight.bold),
                                "SOPOT ŁÓDŹ",
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(
                                      Colors.transparent),
                                ),
                                onPressed: () {},
                                child: Text(
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontFamily: "Helvetica",
                                      fontWeight: FontWeight.normal),
                                  "If u know more information about it. Just click...",
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border:
                          Border.all(color: Colors.white, width: 1.5),
                          color: Colors.white,),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all<double>(0),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                            ),
                            child: Text(
                                "NOT TODAY",
                                style: TextStyle(
                                  fontFamily: "Helvetica",
                                  fontSize: 16,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w300,

                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                      ),
                      Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border:
                          Border.all(color: Colors.white, width: 1.5),
                          color: Colors.white,),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double>(0),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                          ),
                          child: Text(
                            "JOIN TO PARTY",
                            style: TextStyle(
                                fontFamily: "Helvetica",
                                fontSize: 16,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),


                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        tab: Container(),
        desktop: Container(),
      ),
    );
  }
}
