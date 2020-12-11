import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codes/widget/profile_widget.dart';

class EditProfileWithCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Edit Profile'),
        trailing: Text(
          'Save',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
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
                      fit: BoxFit.contain)),
            ),
            Divider(),
            ProfileWidget(
              label: 'Name',
              value: 'Khaled Daqqa',
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
    );
  }
}
