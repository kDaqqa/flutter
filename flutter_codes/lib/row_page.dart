import 'dart:developer';

import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row App'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          children: [
            Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/cut.jpg'),
                      fit: BoxFit.cover),
                )),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [Text('User Name'), Text('Address')],
              ),
            ),
            Spacer(),
            Container(
                padding: EdgeInsets.all(10),
                child: Text('Folow'),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20))),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Text('Home'), label: ''),
          BottomNavigationBarItem(icon: Text('Search'), label: ''),
          BottomNavigationBarItem(icon: Text('favourite'), label: ''),
        ],
      ),
    );
  }
}
