import 'package:flutter/material.dart';

class tabbarcenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 300,
              color: Colors.red,
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: TabBar(
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(
                    child: Text(
                      'car',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Taxia',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  children: [
                    Center(
                      child: Text('mohameed'),
                    ),
                    Center(
                      child: Text('Ali'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
