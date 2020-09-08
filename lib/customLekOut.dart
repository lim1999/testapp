import 'package:flutter/material.dart';

class CustomLekOut extends StatelessWidget {
  final String post;
  final String two;
  final String three;
  final Color color;
  final Color colorText;
  const CustomLekOut({
    Key key,
    this.post,
    this.two,
    this.three,
    this.color,
    this.colorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
      ),
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.only(right: 40.0, left: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$post",
              style: TextStyle(
                color: colorText,
                fontSize: 20,
              ),
            ),
            Text(
              "$two",
              style: TextStyle(
                color: colorText,
                fontSize: 20,
              ),
            ),
            Text(
              "$three",
              style: TextStyle(
                color: colorText,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
