import 'package:coronavirus_information/Constants/Warna.dart';
import 'package:flutter/material.dart';

class UpdateTerkini extends StatelessWidget {
  const UpdateTerkini({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Update Terkini",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Text(
              '21 April 2020, 18.30',
              style: TextStyle(fontSize: 12, color: textOffColor),
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(4)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/positif_icon.png'),
                  Divider(),
                  Text(
                    '6760',
                    style: TextStyle(
                        color: ungu,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    'Positif',
                    style: TextStyle(
                        color: textPrimColor,
                        fontSize: 10),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(4)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/sembuh_icon.png'),
                  Divider(),
                  Text(
                    '6760',
                    style: TextStyle(
                        color: hijau,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    'Sembuh',
                    style: TextStyle(
                        color: textPrimColor,
                        fontSize: 10),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(4)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/meninggal_icon.png'),
                  Divider(),
                  Text(
                    '6760',
                    style: TextStyle(
                        color: merah,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    'Meninggal',
                    style: TextStyle(
                        color: textPrimColor,
                        fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
