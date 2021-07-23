import 'package:coronavirus_information/Constants/Warna.dart';
import 'package:flutter/material.dart';

class UpdateTerkini extends StatelessWidget {
  final String judul;

  const UpdateTerkini({Key? key, required this.judul}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              judul,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Text(
              '21 April 2020, 18.30',
              style: TextStyle(fontSize: 12, color: textOffColor),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 800) {
            return Web();
          } else {
            return Mobile();
          }
        }),
      ],
    );
  }
}

class Web extends StatelessWidget {
  const Web({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PositifWeb(),
        SembuhWeb(),
        MeninggalWeb(),
      ],
    );
  }
}


class Mobile extends StatelessWidget {
  const Mobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PositifBox(),
        SembuhBox(),
        MeninggalBox(),
      ],
    );
  }
}

class MeninggalBox extends StatelessWidget {
  const MeninggalBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(4)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('images/meninggal_icon.png'),
          Divider(),
          Text(
            '6760',
            style: TextStyle(
                color: merah, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            'Meninggal',
            style: TextStyle(color: textPrimColor, fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class SembuhBox extends StatelessWidget {
  const SembuhBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(4)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('images/sembuh_icon.png'),
          Divider(),
          Text(
            '6760',
            style: TextStyle(
                color: hijau, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            'Sembuh',
            style: TextStyle(color: textPrimColor, fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class PositifBox extends StatelessWidget {
  const PositifBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(4)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('images/positif_icon.png'),
          Divider(),
          Text(
            '6760',
            style: TextStyle(
                color: ungu, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            'Positif',
            style: TextStyle(color: textPrimColor, fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class PositifWeb extends StatelessWidget {
  const PositifWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('images/positif_icon.png'),
          Text(
            '192,575,255',
            style: TextStyle(
                color: ungu, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            'Positif',
            style: TextStyle(color: textPrimColor, fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class MeninggalWeb extends StatelessWidget {
  const MeninggalWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('images/meninggal_icon.png'),
          Text(
            '4,135,810',
            style: TextStyle(
                color: merah, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            'Meninggal',
            style: TextStyle(color: textPrimColor, fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class SembuhWeb extends StatelessWidget {
  const SembuhWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('images/sembuh_icon.png'),
          Text(
            '126,668,210',
            style: TextStyle(
                color: hijau, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            'Sembuh',
            style: TextStyle(color: textPrimColor, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
