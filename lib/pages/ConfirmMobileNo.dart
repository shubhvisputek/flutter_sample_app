import 'package:flutter/material.dart';
import '../Utils/String.dart';
import '../widgets/AppTextField.dart';
import '../widgets/carousel_slider.dart';

class ConfirmMobileNo extends StatefulWidget {
  @override
  _ConfirmMobileNoState createState() => _ConfirmMobileNoState();
}

class _ConfirmMobileNoState extends State<ConfirmMobileNo> {

  int _current = 0;
  CarouselSlider basicSlider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(KEY_CONFIRM + ' ' + KEY_MOBILE_NUMBER)),
      body: SingleChildScrollView(
        child: getMainView(),
      ),
    );
  }

  Widget getMainView() {
    List<Widget> list = [
      getPhoneno(),
      getConfirmMobileNo(),
      getOtp(),
    ];

    basicSlider = CarouselSlider(
          pageScroll: false,
          items: list,
          enableInfiniteScroll: false,
          aspectRatio: 1.5,
          viewportFraction: 0.9,
          onPageChanged: (index) {
            setState(() {
              _current = index;
            });
          },
        );

    return Column(
      children: [
        SizedBox(height: 50),
        basicSlider,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(
            list,
            (index, url) {
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4)),
              );
            },
          ),
        ),
      ],
    );
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  Widget getPhoneno() {
    return Container(
      padding: EdgeInsets.all(30),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          AppTextField(
            placeHolderName: KEY_MOBILE_NUMBER,
            hintText: KEY_WHERE_CAN_WE_REACH_YOU_QUES,
            prefixText: '+91',
            keyboardType: TextInputType.phone,
            icon: Icon(Icons.phone),
            validator: (String value) {
              // if(value.trim().length <= 0){
              if (value.isEmpty) {
                return KEY_THIS_SHOULD_NOT_BE_EMPTY;
              }
              return null;
            },
            onSaved: (String value) {
              //_formData[currentPass] = value;
            },
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                child: Text(KEY_NEXT),
                onPressed: () {
                  basicSlider.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getConfirmMobileNo() {
    return Container(
      padding: EdgeInsets.all(30),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(height: 4),
          AppTextField(
            placeHolderName: KEY_CONFIRM + ' ' + KEY_MOBILE_NUMBER,
            hintText: KEY_PLACE_THE_CORRECT_MOBILE_NUMBER,
            prefixText: '+91',
            readOnly: true,
            keyboardType: TextInputType.phone,
            icon: Icon(Icons.phone),
            validator: (String value) {
              // if(value.trim().length <= 0){
              if (value.isEmpty) {
                return KEY_THIS_SHOULD_NOT_BE_EMPTY;
              }
              return null;
            },
            onSaved: (String value) {
              //_formData[currentPass] = value;
            },
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                child: Text(KEY_SEND_OTP),
                onPressed: () {
                  basicSlider.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
              ),
              MaterialButton(
                child: Text(KEY_CHANGE_MOBILE_NUMBER),
                onPressed: () {
                  basicSlider.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                },   
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getOtp() {
    return Container(
      padding: EdgeInsets.all(30),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          AppTextField(
            placeHolderName: KEY_ENTER_OTP,
            hintText: KEY_WHAT_IS_THE_YOU_RECIEVED,
            keyboardType: TextInputType.phone,
            validator: (String value) {
              // if(value.trim().length <= 0){
              if (value.isEmpty) {
                return KEY_THIS_SHOULD_NOT_BE_EMPTY;
              }
              return null;
            },
            onSaved: (String value) {
              //_formData[currentPass] = value;
            },
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                child: Text(KEY_CONFIRM),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/HomePage');
                },
              ),
              MaterialButton(
                child: Text(KEY_CHANGE_MOBILE_NUMBER),
                onPressed: () {
                  basicSlider.animateToPage(0, 
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
