import 'package:coronavirus_information/Components/app_bar.dart';
import 'package:coronavirus_information/Components/banner_pahlawan.dart';
import 'package:coronavirus_information/Components/layanan_covid.dart';
import 'package:coronavirus_information/Components/tentang_kami.dart';
import 'package:coronavirus_information/Components/update_terkini.dart';
import 'package:coronavirus_information/Constants/Warna.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Beranda(),
    Text(
      'Index 1: Statistik',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(135),
        child: BuildAppBar(),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_saver_off),
            label: 'Statistik',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
        selectedItemColor: ungu,
      ),
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
