import 'package:fiesta_finder/ui/questions/pictures_page.dart';
import 'package:flutter/material.dart';
import 'package:fiesta_finder/responsive_helper.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;
  bool isOtherSelected = false;

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
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 1,
                                  width: 360,
                                  decoration: BoxDecoration(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "What's Your gender?",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: "Helvetica",
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0), // Określenie zaokrąglenia
                                      ),
                                      checkColor: Colors.greenAccent,
                                      activeColor: Colors.red,
                                      value: isMaleSelected,
                                      onChanged: (value) {
                                        setState(() {
                                          isMaleSelected = value!;
                                          if (isMaleSelected) {
                                            isFemaleSelected = false;
                                            isOtherSelected = false;
                                          }
                                        });
                                      },
                                    ),
                                    Text(
                                      "Male",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontFamily: "Helvetica",
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0), // Określenie zaokrąglenia
                                      ),
                                      checkColor: Colors.greenAccent,
                                      activeColor: Colors.red,
                                      value: isFemaleSelected,
                                      onChanged: (value) {
                                        setState(() {
                                          isFemaleSelected = value!;
                                          if (isFemaleSelected) {
                                            isMaleSelected = false;
                                            isOtherSelected = false;
                                          }
                                        });
                                      },
                                    ),
                                    Text(
                                      "Female",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontFamily: "Helvetica",
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0), // Określenie zaokrąglenia
                                      ),
                                      checkColor: Colors.greenAccent,
                                      activeColor: Colors.red,
                                      value: isOtherSelected,
                                      onChanged: (value) {
                                        setState(() {
                                          isOtherSelected = value!;
                                          if (isOtherSelected) {
                                            isMaleSelected = false;
                                            isFemaleSelected = false;
                                          }
                                        });
                                      },
                                    ),
                                    Text(
                                      "Other",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontFamily: "Helvetica",
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
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
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                      ),
                                      onPressed: (){
                                          Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) => PicturesPage()));
                                          },
                                      child: Stack(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "NEXT STEP",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: "Helvetica",
                                                  fontSize: 16,
                                                  color: Colors.black87
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )//bottom line with button next step
                          ],
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
