import 'package:coronavirus_information/Components/app_bar.dart';
import 'package:coronavirus_information/Components/banner_pahlawan.dart';
import 'package:coronavirus_information/Components/layanan_covid.dart';
import 'package:coronavirus_information/Components/tentang_kami.dart';
import 'package:coronavirus_information/Components/update_terkini.dart';
import 'package:coronavirus_information/Constants/Warna.dart';
import 'package:coronavirus_information/Models/provinsi.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[Beranda(), Statistik()];

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
            UpdateTerkini(
              judul: 'Update Terkini',
            ),
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

class Statistik extends StatelessWidget {
  const Statistik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            UpdateTerkini(
              judul: 'Data Keseluruhan',
            ),
            SizedBox(
              height: 20,
            ),
            ListProvinsi()
          ],
        ),
      ),
    );
  }
}

class ListProvinsi extends StatelessWidget {
  const ListProvinsi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Data Provinsi',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        SizedBox(
          height: 10,
        ),
        ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final Provinsi provinsi = provinsiList[index];
            return InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.all(10),
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Text(
                          provinsi.nama,
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        )),
                    Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Text(
                                  provinsi.kasusPos.toString(),
                                  style: TextStyle(
                                      color: ungu,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset('images/positif_icon.png'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  provinsi.kasusSem.toString(),
                                  style: TextStyle(
                                      color: hijau,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset('images/sembuh_icon.png'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  provinsi.kasusMen.toString(),
                                  style: TextStyle(
                                      color: merah,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset('images/meninggal_icon.png'),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            );
          },
          itemCount: provinsiList.length,
        ),
      ],
    );
  }
}
