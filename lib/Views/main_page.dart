import 'package:coronavirus_information/Components/app_bar.dart';
import 'package:coronavirus_information/Components/banner_pahlawan.dart';
import 'package:coronavirus_information/Components/layanan_covid.dart';
import 'package:coronavirus_information/Components/tentang_kami.dart';
import 'package:coronavirus_information/Components/update_terkini.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(135),
        child: BuildAppBar(),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UpdateTerkini(),
              SizedBox(
                height: 20,
              ),
              CardJadiPahlawan(),
              SizedBox(
                height: 20,
              ),
              LayananCovid(),
              SizedBox(
                height: 20,
              ),
              TentangKami(),
            ],
          ),
        ),
      ),
    );
  }
}

