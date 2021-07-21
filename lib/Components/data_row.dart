import 'package:coronavirus_information/Constants/Warna.dart';
import 'package:flutter/material.dart';

class DataPosSemMen extends StatelessWidget {

  final String namaProv;
  final int kasusPos;
  final int kasusSem;
  final int kasusMen;

  const DataPosSemMen({
    Key? key, required this.namaProv, required this.kasusPos, required this.kasusSem, required this.kasusMen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                kasusPos.toString(),
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
                kasusSem.toString(),
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
                kasusMen.toString(),
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
    );
  }
}
