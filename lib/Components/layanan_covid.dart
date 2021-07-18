import 'package:coronavirus_information/Constants/Warna.dart';
import 'package:coronavirus_information/Views/coming_soon.dart';
import 'package:coronavirus_information/Views/rs_rujukan_page.dart';
import 'package:flutter/material.dart';

class LayananCovid extends StatelessWidget {
  const LayananCovid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Layanan Fight Covid-19",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RsRujukan();
                }));
              },
              child: Container(
                width: (MediaQuery.of(context).size.width - 51) / 4,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/rs_icon.png'),
                    Divider(),
                    Text(
                      'Rumah Sakit',
                      style: TextStyle(color: textPrimColor, fontSize: 10),
                    ),
                    Text(
                      'Rujukan',
                      style: TextStyle(color: textPrimColor, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ComingSoon();
                }));
              },
              child: Container(
                width: (MediaQuery.of(context).size.width - 51) / 4,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    border: Border.all(), borderRadius: BorderRadius.circular(4)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/edukasi_icon.png'),
                    Divider(),
                    Text(
                      'Edukasi',
                      style: TextStyle(color: textPrimColor, fontSize: 10),
                    ),
                    Text(
                      'Covid-19',
                      style: TextStyle(color: textPrimColor, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ComingSoon();
                }));
              },
              child: Container(
                width: (MediaQuery.of(context).size.width - 51) / 4,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    border: Border.all(), borderRadius: BorderRadius.circular(4)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/diagnosa_icon.png'),
                    Divider(),
                    Text(
                      'Diagnosa',
                      style: TextStyle(color: textPrimColor, fontSize: 10),
                    ),
                    Text(
                      'Mandiri',
                      style: TextStyle(color: textPrimColor, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ComingSoon();
                }));
              },
              child: Container(
                width: (MediaQuery.of(context).size.width - 51) / 4,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    border: Border.all(), borderRadius: BorderRadius.circular(4)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/data_icon.png'),
                    Divider(),
                    Text(
                      'Data',
                      style: TextStyle(color: textPrimColor, fontSize: 10),
                    ),
                    Text(
                      'Internasional',
                      style: TextStyle(color: textPrimColor, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ComingSoon();
                }));
              },
              child: Container(
                width: (MediaQuery.of(context).size.width - 51) / 4,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    border: Border.all(), borderRadius: BorderRadius.circular(4)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/peduli_icon.png'),
                    Divider(),
                    Text(
                      'Indonesia',
                      style: TextStyle(color: textPrimColor, fontSize: 10),
                    ),
                    Text(
                      'Peduli',
                      style: TextStyle(color: textPrimColor, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ComingSoon();
                }));
              },
              child: Container(
                width: (MediaQuery.of(context).size.width - 51) / 4,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    border: Border.all(), borderRadius: BorderRadius.circular(4)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/hotline_icon.png'),
                    Divider(),
                    Text(
                      'Hotline',
                      style: TextStyle(color: textPrimColor, fontSize: 10),
                    ),
                    Text(
                      '',
                      style: TextStyle(color: textPrimColor, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ComingSoon();
                }));
              },
              child: Container(
                width: (MediaQuery.of(context).size.width - 51) / 4,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    border: Border.all(), borderRadius: BorderRadius.circular(4)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/produktif_icon.png'),
                    Divider(),
                    Text(
                      'Produktif',
                      style: TextStyle(color: textPrimColor, fontSize: 10),
                    ),
                    Text(
                      '',
                      style: TextStyle(color: textPrimColor, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
