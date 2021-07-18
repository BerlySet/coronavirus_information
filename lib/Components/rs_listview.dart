import 'package:coronavirus_information/Models/rumah_sakit.dart';
import 'package:flutter/material.dart';

class RsList extends StatelessWidget {
  const RsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rumahSakitList.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final RumahSakit rs = rumahSakitList[index];
        return InkWell(
          onTap: () {},
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/location_rs.png',
                          height: 42,
                          width: 42,
                        ))),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          rs.nama,
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          rs.jarak + ' Km',
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
        );
      },
    );
  }
}