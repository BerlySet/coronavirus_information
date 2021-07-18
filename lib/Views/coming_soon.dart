import 'package:coronavirus_information/Constants/Warna.dart';
import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Coming Soon',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        backgroundColor: ungu,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/zonk.png'),
              SizedBox(height: 35,),
              Text('Fitur ini dalam Tahap Pengembangan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
              SizedBox(height: 10,),
              Text('Tunggu update dari aplikasi kami ya, pantau terus', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12,),),
              Text('#dirumahaja update terkait COVID-19', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12,),),
            ],
          ),
        ),
      ),
    );
  }
}