import 'package:coronavirus_information/Constants/Warna.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class TentangKami extends StatelessWidget {
  const TentangKami({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Tentang Kami",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(4)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('images/sumber_info_icon.png'),
              Container(
                width: 225,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sumber Informasi', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 12,
                    ),),
                    SizedBox(height: 3,), 
                    Text('Kami menampilkan data dari sumber terpercaya', style: TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 10,
                    ),)
                  ],
                )
              ),
              Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('images/survei_icon.png'),
              Container(
                width: 225,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Survei Kepuasan Pengguna', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 12,
                    ),),
                    SizedBox(height: 3,), 
                    Text('Berikan kami komentar anda mengenai aplikasi', style: TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 10,
                    ),)
                  ],
                )
              ),
              Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
            ],
          ),
        ),
      ],
    );
  }
}
