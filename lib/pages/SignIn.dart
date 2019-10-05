import 'package:flutter/material.dart';
import '../Utils/String.dart';
import '../Utils/Utils.dart';
import '../widgets/AppTextField.dart';
import '../Utils/WebServiceHandler.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInState();
  }
}

class _SignInState extends State<SignIn> {
  static String emailID = KEY_EMAIL_ID;
  static String enterPass = KEY_ENTER_PASSWORD;

  final GlobalKey<FormState> _signInFormKey = GlobalKey<FormState>();

  final Map<String, dynamic> _signInData = {
    emailID: null,
    enterPass: null,
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //appBar: AppBar(title: Text("Sign In")),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: getMainView(),
      ),
    );
  }

  Widget getMainView() {
    return Container(
      width: double.infinity,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 50),
          Image.asset(
            'assets/app_icon.png',
            height: 150.0,
          ),
          SizedBox(height: 20),
          Text("------------- " + KEY_SIGN_IN_WITH + " --------------"),
          SizedBox(height: 20),
          getGoogleButton(_onGoogleSignInButtonPressed,
              KEY_SIGN_IN_WITH + " " + KEY_GOOGLE),
          SizedBox(height: 20),
          Text("------------- " +
              KEY_OR +
              " " +
              KEY_USE_EMAIL_ADDRESS +
              " -------------"),
          SizedBox(height: 20),
          getLoginView(),
          SizedBox(height: 30),
          Opacity(
            opacity: 0.5,
            child: Container(
              margin: EdgeInsets.fromLTRB(100, 0, 100, 0),
              height: 1.5,
              color: Colors.black12,
            ),
          ),
          SizedBox(height: 30),
          getSignUpButton(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  void _onGoogleSignInButtonPressed() async {
    bool signInResult = await WebServiceHandler.signInWithGoogle();
    if(signInResult){
      Navigator.pushReplacementNamed(context, '/HomePage');
    }
  }

  void onSignInButtonClicked() {
    _signInFormKey.currentState.save();
    if (!_signInFormKey.currentState.validate()) {
      return;
    }
    Navigator.pushReplacementNamed(context, '/HomePage');
  }

  Widget getLoginView() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Column(
        children: <Widget>[
          Form(
            key: _signInFormKey,
            child: Column(
              children: <Widget>[
                AppTextField(
                  placeHolderName: emailID,
                  validator: (String value) {
                    // if(value.trim().length <= 0){
                    if (value.isEmpty) {
                      return KEY_THIS_SHOULD_NOT_BE_EMPTY;
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    _signInData[emailID] = value;
                  },
                ),
                SizedBox(height: 15.0),
                AppTextField(
                  placeHolderName: enterPass,
                  validator: (String value) {
                    // if(value.trim().length <= 0){
                    if (value.isEmpty) {
                      return KEY_THIS_SHOULD_NOT_BE_EMPTY;
                    } else if (enterPass == emailID && value.length < 8 ||
                        value.trim().length <= 0) {
                      return KEY_THIS_SHOULD_BE_8_PLUS_CHAR_LONG;
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    _signInData[enterPass] = value;
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                child: Text(KEY_SIGN_IN),
                onPressed: () => onSignInButtonClicked(),
              ),
              MaterialButton(
                child: Text(KEY_FORGET_PASSWORD_QUES),
                textColor: Colors.lightBlueAccent,
                onPressed: () {
                  Navigator.pushNamed(context, '/ForgotPassword');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getSignUpButton() {
    return RawMaterialButton(
        padding: EdgeInsets.all(15.0),
        shape: const StadiumBorder(),
        child: RichText(
          text: new TextSpan(
            children: [
              new TextSpan(
                text: KEY_NEW_USER_QUES + ' ',
                style: new TextStyle(color: Colors.black),
              ),
              new TextSpan(
                text: KEY_SIGNUP,
                style: new TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline),
              ),
              new TextSpan(
                text: ' ' + KEY_NOW_EXLAMATION,
                style: new TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/SignUp');
        });
  }
}
