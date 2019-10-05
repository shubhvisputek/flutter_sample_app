import 'package:flutter/material.dart';

Widget getGoogleButton(void Function() onPressed, String btnText) {
  return Container(
    child: new RaisedButton(
        padding: EdgeInsets.only(top: 2.0, bottom: 2.0, left: 2.0),
        color: Colors.white,  //light mode
        onPressed: onPressed,
        child: new Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              //color: Colors.white,
              child: Image.asset(
                'assets/google_logo.png',
                height: 18.0,
              ),
              // decoration: BoxDecoration(   //dark mode
              //   color: Colors.white,
              //   borderRadius: new BorderRadius.all(Radius.circular(2)),
              // ),
            ),
            Container(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  btnText,
                  style: TextStyle(
                    fontSize: 14.0,
                    //color: Colors.white,  //dark mode
                    color: Colors.black.withOpacity(0.54),  //light mode
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ],
        )),
  );
}

