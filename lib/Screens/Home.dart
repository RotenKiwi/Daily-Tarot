import 'package:daily_tarot/Components/RoundedButton.dart';
import 'package:daily_tarot/Screens/Card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String date = DateFormat('dd MMMM yyyy').format(DateTime.now());
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff2c303c),
            Color(0xff040707), //viridian : 6ca18b
          ],
        ),
      ),
      child: Stack(alignment: Alignment.topCenter, children: <Widget>[
        Positioned(
          top: size.height * 0.1,
          child: Text(
            date,
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Color(0xffd9d9d9),
              fontFamily: 'Nova',
              fontSize: size.width * 0.04,
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.15,
          child: Text(
            'Your Daily Card',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Color(0xffd9d9d9),
              fontFamily: 'Nova',
              fontWeight: FontWeight.w800,
              fontSize: size.width * 0.1,
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.23,
          child: Container(
            width: size.width * 0.7,
            child: Text(
              'Your Card of the Day resets at Midnight',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Color(0xffd9d9d9),
                fontFamily: 'Nova',
                fontWeight: FontWeight.w300,
                fontSize: size.width * 0.05,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
            top: size.height * 0.37,
            child: Container(
              width: size.width,
              child: Stack(alignment: Alignment.center, children: <Widget>[
                Positioned(
                    left: size.width * 0.1,
                    child: Container(
                      child: Transform.rotate(
                        angle: -0.27,
                        child: Image.asset(
                          'assets/images/Chariot.png',
                          height: size.height * 0.3,
                        ),
                      ),
                    )),
                Positioned(
                    right: size.width * 0.1,
                    child: Transform.rotate(
                      angle: 0.27,
                      child: Image.asset(
                        'assets/images/Chariot.png',
                        height: size.height * 0.3,
                      ),
                    )),
                Positioned(
                  child: Image.asset(
                    'assets/images/high-priestess.png',
                    height: size.height * 0.35,
                  ),
                ),
              ]),
            )),
        Positioned(
            top: size.height * 0.8,
            child: RoundedButton(
              color: Color(0xff896b4f),
              text: 'DRAW',
              textColor: Color(0xffd9d9d9),
              length: size * 0.7,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => CardPage()));
              },
            ))
        //0xffca956d
      ]),
    );
  }
}
