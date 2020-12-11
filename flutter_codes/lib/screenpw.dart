import 'package:flutter/material.dart';
import 'package:flutter_codes/widget/profile_widget.dart';

class ScreenPW extends StatelessWidget {
  nameFunction(String value) {
    print('hello my name is $value');
  }

  addressFunction(String value) {
    print('hello my name is $value');
  }

  emailFunction(String value) {
    print('hello my name is $value');
  }

  dateFunction(String value) {
    print('hello my name is $value');
  }

  phoneFunction(String value) {
    print('hello my name is $value');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 50),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                textDirection: TextDirection.rtl,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Edit Profile ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_back_ios,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // margin: EdgeInsets.symmetric(vertical: 5),
                alignment: Alignment.center,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 36,
                ),

                height: 140,
                width: 140,
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
              ),
            ),
            Divider(),
            ProfileWidget(
              label: 'Name',
              value: 'Khaled Daqqa',
              fun: nameFunction,
            ),
            Divider(),
            ProfileWidget(
              label: 'Address',
              value: 'Khan Yunis',
            ),
            Divider(),
            ProfileWidget(
              label: 'Email',
              value: 'k.daqqa@gmail.com',
            ),
            Divider(),
            ProfileWidget(
              label: 'Mobile',
              value: '000000000000',
            ),
            Divider(),
            ProfileWidget(
              label: 'Birthdate',
              value: '31-OCT-1989',
              icon: Icon(Icons.calendar_today),
            ),
            Divider(),
          ],
        ),
      ),
    ));
  }
}
