import 'dart:math' as math;
import 'package:coronavirus_information/Views/coming_soon.dart';
import 'package:flutter/material.dart';

class CardJadiPahlawan extends StatelessWidget {
  const CardJadiPahlawan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ComingSoon();
        }));
      },
      child: Container(
        height: 87,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/card-jadipahlawan.png'),
                fit: BoxFit.fill)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('images/fight_illustration.png')),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pahlawan Covid-19',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Jadilah Pahlawan untuk daerahmu',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  '#PahlawanCOVID19',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
