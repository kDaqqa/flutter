import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  String value;
  String label;
  Widget icon;
  Function fun;
  ProfileWidget(
      {@required this.value, @required this.label, this.icon, this.fun});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        fun(value);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Divider(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(this.label),
                  Text(
                    this.value,
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            icon == null ? Container() : icon
          ],
        ),
      ),
    );
  }
}
