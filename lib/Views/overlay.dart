/// Flutter code sample for showGeneralDialog

// This sample demonstrates how to create a restorable dialog. This is
// accomplished by enabling state restoration by specifying
// [WidgetsApp.restorationScopeId] and using [Navigator.restorablePush] to
// push [RawDialogRoute] when the button is tapped.
//
// {@macro flutter.widgets.RestorationManager}

import 'package:coronavirus_information/Constants/Warna.dart';
import 'package:flutter/material.dart';

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Navigator.of(context).restorablePush(_dialogBuilder);
          },
          child: const Text('Open Dialog'),
        ),
      ),
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
                  'Nama RS',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: textPrimColor),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Jl. Jatinegara Timur No.85-87, RT.10/RW.2, Jakarta Timur',
                  style: TextStyle(fontSize: 12, color: textPrimColor),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '655 Km dari lokasimu',
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
                        Icon(Icons.call, color: Colors.white,),
                        Text('(0380) 832892', style: TextStyle(color: Colors.white),),
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
