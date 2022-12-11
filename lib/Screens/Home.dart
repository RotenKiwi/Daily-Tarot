import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      child: Stack(children: <Widget>[

      ]),
    );
  }
}
