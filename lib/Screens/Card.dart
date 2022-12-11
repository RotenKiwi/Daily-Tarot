import 'package:daily_tarot/Components/RoundedField.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

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
            Color(0xff040707), //viridian : 6ca18b
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          SizedBox(
            height: size.height * 0.07,
          ),
          Text(
            'Your Today\'s Card',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Color(0xffd9d9d9),
              fontFamily: 'Nova',
              fontWeight: FontWeight.w500,
              fontSize: size.width * 0.065,
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Image.asset(
            'assets/images/Death.png',
            height: size.height * 0.45,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            'DEATH',
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Color(0xffd9d9d9),
              fontFamily: 'Nova',
              fontWeight: FontWeight.w800,
              fontSize: size.width * 0.095,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundedField(
                text: 'Endings',
                color: Color(0xff896b4f),
                textColor: Color(0xffd9d9d9),
                length: size * 0.3,
              ),
              SizedBox(width: size.width*0.03,),
              RoundedField(
                text: 'Change',
                color: Color(0xff896b4f),
                textColor: Color(0xffd9d9d9),
                length: size * 0.3,
              ),
            ],
          ),

              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RoundedField(
                    text: 'Transformation',
                    color: Color(0xff896b4f),
                    textColor: Color(0xffd9d9d9),
                    length: size * 0.47,
                  ),
                  SizedBox(width: size.width*0.03,),
                  RoundedField(
                    text: 'Transition',
                    color: Color(0xff896b4f),
                    textColor: Color(0xffd9d9d9),
                    length: size * 0.37,
                  ),
                ],
              ),
              SizedBox(height: size.height*0.04,),
              Text(
                'The Death card signals that one major phase in your life is ending, and a new one is going to start.',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Color(0xffd9d9d9),
                  fontFamily: 'Nova',
                  fontWeight: FontWeight.w500,
                  fontSize: size.width * 0.05,
                ),
                textAlign: TextAlign.center,
              ),

        ]),
      ),
    );
  }
}
