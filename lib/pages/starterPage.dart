import 'package:fiesta_finder/responsiveHelper.dart';
import 'package:flutter/material.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  @override
  State<StarterPage> createState() => _StarterPage();
}

class _StarterPage extends State<StarterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Starter Page"),
      ),
      body: SafeArea(
        child: ResponsiveWidget(
          mobile: Column(
            children: [buildBannerSlider(), buildIntroText()],
          ),
          tab: Column(
            children: [buildBannerSlider(), SizedBox(width: 10,),buildIntroText()],
          ),
          desktop: Column(
            children: [buildBannerSlider(), SizedBox(width: 10,),buildIntroText()],
          ),
        ),
      ),
    );
  }

  Text buildIntroText() => Text("Lorem porelum 123",);

  Container buildBannerSlider() {
    return Container(
      width: 320,
      height: 180,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.pink]),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
