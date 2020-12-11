import 'package:flutter/material.dart';

//column with scroll
class ColumnWithscroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column App'),
      ),
      body: Container(
        color: Colors.red,
        //scroll widgrt
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient:
                        LinearGradient(colors: [Colors.black, Colors.black]),
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.4), BlendMode.dstATop),
                        image: AssetImage(
                          'assets/images/cut.jpg',
                        ),
                        fit: BoxFit.cover)),
                child: Container(
                  color: Colors.blue,
                  child: Text('Khale Daqqa'),
                ),
              ),
              Container(
                child: Text(
                  'Khaled Daqqa',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient:
                        LinearGradient(colors: [Colors.black, Colors.black]),
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.4), BlendMode.dstATop),
                        image: AssetImage(
                          'assets/images/cut.jpg',
                        ),
                        fit: BoxFit.cover)),
                child: Container(
                  color: Colors.blue,
                  child: Text('Khale Daqqa'),
                ),
              ),
              Container(
                child: Text(
                  'Khaled Daqqa',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient:
                        LinearGradient(colors: [Colors.black, Colors.black]),
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.4), BlendMode.dstATop),
                        image: AssetImage(
                          'assets/images/cut.jpg',
                        ),
                        fit: BoxFit.cover)),
                child: Container(
                  color: Colors.blue,
                  child: Text('Khale Daqqa'),
                ),
              ),
              Container(
                child: Text(
                  'Khaled Daqqa',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
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
