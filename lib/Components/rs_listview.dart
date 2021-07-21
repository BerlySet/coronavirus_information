import 'package:coronavirus_information/Constants/Warna.dart';
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
          onTap: () {
            Navigator.of(context)
                .restorablePush(_dialogBuilder, arguments: index);
          },
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

  static Route<Object?> _dialogBuilder(
      BuildContext context, Object? arguments) {
    return RawDialogRoute<void>(
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        final RumahSakit rs = rumahSakitList[int.parse(arguments.toString())];
        return Center(
          child: Container(
            color: Colors.white,
            height: 300,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/location_rs.png',
                  height: 52,
                  width: 52,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  rs.nama,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: textPrimColor),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  rs.alamat,
                  style: TextStyle(fontSize: 12, color: textPrimColor),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  rs.jarak + ' Km dari lokasimu',
                  style: TextStyle(fontSize: 12, color: textSecColor),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(ungu),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                        Text(
                          rs.notelp,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
