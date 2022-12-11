import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String date = DateFormat('dd-MMMM-yyyy').format(DateTime.now());
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
