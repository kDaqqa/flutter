import 'package:flutter/material.dart';
import 'package:flutter_codes/task-mockup.dart';

class TabBar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar'),
          bottom: TabBar(tabs: [
            Tab(
              text: 'First',
            ),
            Tab(
              text: 'Second',
            ),
            Tab(
              text: 'Third',
            )
          ]),
        ),
        body: TabBarView(children: [
          Column(
            children: task.map((e) => Text(e.taskName)).toList(),
          ),
          Column(
            children: task
                .where((element) => element.isComplete == true)
                .map((e) => Text(e.taskName))
                .toList(),
          ),
          Column(
            children: task
                .where((element) => element.isComplete == false)
                .map((e) => Text(e.taskName))
                .toList(),
          )
        ]),
      ),
    );
  }
}

/*
class Tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('tab'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'a'),
              Tab(text: 'b'),
              Tab(text: 'c'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: task.map((e) => Text(e.taskName)).toList(),
            ),
            Column(
                children: task
                    .where((element) => element.isComplete == true)
                    .map((e) => Text(e.taskName))
                    .toList()),
            Column(
                children: task
                    .where((element) => !element.isComplete)
                    .map((e) => Text(e.taskName))
                    .toList()),
          ],
        ),
      ),
    );
  }
}*/
