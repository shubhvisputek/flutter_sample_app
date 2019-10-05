import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../widgets/AppTextField.dart';
import '../Utils/Utils.dart';
import '../widgets/PrivacyPolicy.dart';
import '../widgets/TermsAndConditions.dart';
import '../Utils/String.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {
  static String firstName = KEY_FIRST_NAME;
  static String lastName = KEY_LAST_NAME;
  static String emailID = KEY_EMAIL_ID;
  static String mobileNumber = KEY_MOBILE_NUMBER;
  static String referralCode = KEY_REFERRAL_CODE;
  static String enterPass = KEY_ENTER_PASSWORD;
  static String confirmPass = KEY_CONFIRM_PASSWORD;

  final Map<String, dynamic> _signUpData = {
    firstName: null,
    lastName: null,
    emailID: null,
    mobileNumber: null,
    referralCode: null,
    enterPass: null,
    confirmPass: null,
  };

  bool checkBoxTermsAndConditionsValue = false;
  bool checkBoxPrivacyPolicyValue = false;

  final GlobalKey<FormState> _signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Sign Up")),
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
          Text("------------- "+ KEY_SIGN_UP_WITH +" --------------"),
          SizedBox(height: 20),
          getGoogleButton(_onGoogleSignUpButtonPressed, KEY_SIGN_UP_WITH + " " + KEY_GOOGLE),
          SizedBox(height: 20),
          Text("------------- "+ KEY_OR +" -------------"),
          SizedBox(height: 20),
          getSignUpView(),
          SizedBox(height: 10),
          getReadTermsAndConditionCheckBox(),
          getReadPrivacyPolicyCheckBox(),
          SizedBox(height: 5),
          getSignUpButton(),
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
          getSignInButton(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  _onGoogleSignUpButtonPressed() {}

  Widget getSignUpView() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Form(
        key: _signUpFormKey,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                AppTextField(
                  placeHolderName: firstName,
                  flexible: true,
                  validator: (String value) {
                    // if(value.trim().length <= 0){
                    if (value.isEmpty) {
                      return KEY_THIS_SHOULD_NOT_BE_EMPTY;
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    _signUpData[firstName] = value;
                  },
                ),
                SizedBox(width: 20.0),
                AppTextField(
                  tfValue: _signUpData[lastName],
                  placeHolderName: lastName,
                  flexible: true,
                  validator: (String value) {
                    // if(value.trim().length <= 0){
                    if (value.isEmpty) {
                      return KEY_THIS_SHOULD_NOT_BE_EMPTY;
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    _signUpData[lastName] = value;
                  },
                ),
              ],
            ),
            AppTextField(
              tfValue: _signUpData[emailID],
              placeHolderName: emailID,
              validator: (String value) {
                // if(value.trim().length <= 0){
                if (value.isEmpty) {
                  return KEY_THIS_SHOULD_NOT_BE_EMPTY;
                }
                return null;
              },
              onSaved: (String value) {
                _signUpData[emailID] = value;
              },
            ),
            Row(
              children: <Widget>[
                AppTextField(
                  tfValue: _signUpData[mobileNumber],
                  placeHolderName: mobileNumber,
                  flexible: true,
                  validator: (String value) {
                    // if(value.trim().length <= 0){
                    if (value.isEmpty) {
                      return KEY_THIS_SHOULD_NOT_BE_EMPTY;
                    } else if (value.trim().length != 10) {
                      return KEY_THIS_SHOULD_BE_ONLY_10_CHAR_LONG;
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    _signUpData[mobileNumber] = value;
                  },
                ),
                SizedBox(width: 20.0),
                AppTextField(
                  tfValue: _signUpData[referralCode],
                  placeHolderName: referralCode,
                  flexible: true,
                  validator: (String value) {
                    return null;
                  },
                  onSaved: (String value) {
                    _signUpData[referralCode] = value;
                  },
                ),
              ],
            ),
            AppTextField(
              tfValue: _signUpData[enterPass],
              placeHolderName: enterPass,
              obscureText: true,
              validator: (String value) {
                // if(value.trim().length <= 0){
                if (value.isEmpty) {
                  return KEY_THIS_SHOULD_NOT_BE_EMPTY;
                } else if (value.length < 8 || value.trim().length <= 0) {
                  return KEY_THIS_SHOULD_BE_8_PLUS_CHAR_LONG;
                }
                return null;
              },
              onSaved: (String value) {
                _signUpData[enterPass] = value;
              },
            ),
            AppTextField(
              tfValue: _signUpData[confirmPass],
              placeHolderName: confirmPass,
              obscureText: true,
              validator: (String value) {
                // if(value.trim().length <= 0){
                if (value.isEmpty) {
                  return KEY_THIS_SHOULD_NOT_BE_EMPTY;
                } else if (value.length < 8 || value.trim().length <= 0) {
                  return KEY_THIS_SHOULD_BE_8_PLUS_CHAR_LONG;
                } else if (_signUpData[enterPass] != value) {
                  return KEY_PLEASE_ENTER_CORRECT_PASSWORD;
                }
                return null;
              },
              onSaved: (String value) {
                _signUpData[confirmPass] = value;
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showTermsAndConditionDialog(BuildContext context, RichText strTerms) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(KEY_TERMS_AND_CONDITIONS),
          content: SingleChildScrollView(
            child: strTerms,
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(KEY_OK),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  Widget getReadTermsAndConditionCheckBox() {
    return Row(
      children: <Widget>[
        Checkbox(
          value: checkBoxTermsAndConditionsValue,
          onChanged: (bool newValue) {
            setState(() {
              checkBoxTermsAndConditionsValue = newValue;
            });
          },
        ),
        RichText(
          text: new TextSpan(
            children: [
              new TextSpan(
                text: KEY_I_HAVE_READ_AND_ACCEPT_THE + ' ',
                style: new TextStyle(color: Colors.black),
              ),
              new TextSpan(
                text: KEY_TERMS_AND_CONDITIONS,
                style: new TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    _showTermsAndConditionDialog(
                        context, termsAndConditionsData);
                  },
              ),
              new TextSpan(
                text: '.',
                style: new TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _showPrivacyPolicyDialog(
      BuildContext context, RichText strPrivacyPolicy) {
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(KEY_PRIVACY_POLICY),
          content: SingleChildScrollView(
            child: strPrivacyPolicy,
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(KEY_OK),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  Widget getReadPrivacyPolicyCheckBox() {
    return Row(
      children: <Widget>[
        Checkbox(
          value: checkBoxPrivacyPolicyValue,
          onChanged: (bool newValue) {
            setState(() {
              checkBoxPrivacyPolicyValue = newValue;
            });
          },
        ),
        RichText(
          text: new TextSpan(
            children: [
              new TextSpan(
                text: KEY_I_HAVE_READ_AND_ACCEPT_THE + ' ',
                style: new TextStyle(color: Colors.black),
              ),
              new TextSpan(
                text: KEY_PRIVACY_POLICY,
                style: new TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    _showPrivacyPolicyDialog(context, privacyPolicyData);
                  },
              ),
              new TextSpan(
                text: '.',
                style: new TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget getSignUpButton() {
    return RaisedButton(
      child: Text(KEY_SIGN_UP),
      onPressed: () {
        _signUpFormKey.currentState.save();
        if (!_signUpFormKey.currentState.validate()) {
          return;
        }
        Navigator.pushNamed(context, '/ConfirmMobileNo');
      },
    );
  }

  Widget getSignInButton() {
    return RawMaterialButton(
        padding: EdgeInsets.all(15.0),
        shape: const StadiumBorder(),
        child: RichText(
          text: new TextSpan(
            children: [
              new TextSpan(
                text: KEY_EXTSING_USER_QUES + ' ',
                style: new TextStyle(color: Colors.black),
              ),
              new TextSpan(
                text: KEY_SIGNIN,
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
          Navigator.pushReplacementNamed(context, '/SignIn');
        });
  }
}
