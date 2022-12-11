import 'package:flutter/material.dart';
import 'package:flutter_intl/flutter_intl.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String date = DateTime.now().toString();
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff2c303c),
            Color(0xff1B1F2E), //viridian : 6ca18b
          ],
        ),
      ),
      child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
Positioned(top: size.height*0.2,
    child: Text(date))
      ]),
    );
  }
}
