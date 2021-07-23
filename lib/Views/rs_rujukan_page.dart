import 'package:coronavirus_information/Components/rs_listview.dart';
import 'package:coronavirus_information/Constants/Warna.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RsRujukan extends StatelessWidget {
  const RsRujukan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rumah Sakit Rujukan',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        backgroundColor: ungu,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 15,
            ),
            PilihProvinsi(),
            Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  'Rekomendasi',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RsList(),
            ),
          ],
        ),
      ),
    );
  }
}

class PilihProvinsi extends StatelessWidget {
  const PilihProvinsi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 15, right: 15, left: 15),
        decoration: BoxDecoration(
          border: Border.all(),
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 12),
              child: Text(
                "Pilih Provinsi",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 12),
                child: Icon(Icons.arrow_drop_down)),
          ],
        )),
      ),
    );
  }
}
