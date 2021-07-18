import 'package:coronavirus_information/Constants/Warna.dart';
import 'package:flutter/material.dart';

class Notifikasi extends StatelessWidget {
  const Notifikasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pemberitahuan',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        backgroundColor: ungu,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide()),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/notifikasi_icon.png')),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PPKM darurat diperpanjang hingga akhir Juli!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Presiden Joko Widodo lewat Menko PMK Muhadjir Effendy mengabarkan bahwa Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM) arurat akan diperpanjang hingga akhir Juli. Perpanjangan PPKM Darurat guna menekan penularan virus COVID-19 ini sudah diputuskan dalam Rapat Kabinet Terbatas.',
                            style:
                                TextStyle(fontSize: 12, color: Color(0xFF5E5E5E)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide()),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/notifikasi_icon.png')),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cegah persebaran Covid-19 dengan tetap dirumah aja!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Presiden Joko Widodo (Jokowi) telah meminta masyarakat untuk meningkatkan kewaspadaan terhadap penyebaran virus covid-19. Berdasarkan konferensi pers yang dilakukan di Istana Bogor, Minggu (15/3), Jokowi menghimbau agar masyarakat Indonesia mengurangi aktivitas di luar rumah. Hal tersebut dilakukan dalam upaya meminimalisir penyebaran virus corona.',
                            style:
                                TextStyle(fontSize: 12, color: Color(0xFF5E5E5E)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
