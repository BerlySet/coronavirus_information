import 'package:flutter/material.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fight Covid-19',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(2)),
          Text(
            'Ayo lawan Covid-19 di Indonesia bersama',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
          ),
        ],
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.notifications))],
      flexibleSpace: SafeArea(
        child: Image.asset('images/background-header.png'),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: BuildLocationBar(),
      ),
    );
  }
}

class BuildLocationBar extends StatelessWidget {
  const BuildLocationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 25, right: 15, left: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
            child: Row(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(12, 5, 10, 5),
                child: Icon(Icons.pin_drop, size: 16,)),
            Text("Indonesia", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),),
          ],
        )),
      ),
    );
  }
}
