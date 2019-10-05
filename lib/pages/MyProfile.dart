import 'package:flutter/material.dart';
import '../widgets/AppTextField.dart';
import '../Utils/String.dart';
class MyProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyProfileState();
  }
}

class _MyProfileState extends State<MyProfile> {
  static String currentPass = KEY_CURRENT_PASSWORD;
  static String newPass = KEY_NEW_PASSWORD;
  static String confirmPass = KEY_CONFIRM_PASSWORD;
  static String name = KEY_Name;
  static String mobileNumber = KEY_MOBILE_NUMBER;
  static String emailID = KEY_EMAIL_ID;

  final Map<String, dynamic> _formData = {
    currentPass: null,
    newPass: null,
    confirmPass: null,
    name: null,
    mobileNumber: null,
    emailID: null,
  };

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildChangePasswordButton(BuildContext context) {
    return MaterialButton(
      minWidth: 1000.0,
      //textColor: Colors.pri,
      child: Text(KEY_CURRENT_PASSWORD),
      onPressed: () {
        _showChangePasswordDialog(context);
      },
    );
  }

  void changePasswordAlertAction() {
    _formKey.currentState.save();
    if (!_formKey.currentState.validate()) {
      return;
    }

    if (_formData[newPass] == _formData[confirmPass]) {
      Navigator.pop(context);
      _showPasswordChangeResultDialog(context, true, '');
    } else {
      Navigator.pop(context);
      _showPasswordChangeResultDialog(
          context, false, KEY_PASSWORD_DOESNT_MATCH);
    }
  }

  void _showChangePasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(KEY_CHANGE_PASSWORD),
          content: Container(
            height: 300.0,
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  AppTextField(
                    placeHolderName: currentPass,
                    obscureText: true,
                    validator: (String value) {
                      // if(value.trim().length <= 0){
                      if (value.isEmpty) {
                        return KEY_THIS_SHOULD_NOT_BE_EMPTY;
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      _formData[currentPass] = value;
                    },
                  ),
                  AppTextField(
                    placeHolderName: newPass,
                    obscureText: true,
                    validator: (String value) {
                      // if(value.trim().length <= 0){
                      if (value.isEmpty) {
                        return KEY_THIS_SHOULD_NOT_BE_EMPTY;
                      } else if ((confirmPass == newPass ||
                                  newPass == newPass) &&
                              value.length < 8 ||
                          value.trim().length <= 0) {
                        return KEY_THIS_SHOULD_BE_8_PLUS_CHAR_LONG;
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      _formData[newPass] = value;
                    },
                  ),
                  AppTextField(
                    placeHolderName: confirmPass,
                    obscureText: true,
                    validator: (String value) {
                      // if(value.trim().length <= 0){
                      if (value.isEmpty) {
                        return KEY_THIS_SHOULD_NOT_BE_EMPTY;
                      } else if (confirmPass == confirmPass &&
                          _formData[confirmPass] != value) {
                        return KEY_PLEASE_ENTER_CORRECT_PASSWORD;
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      _formData[confirmPass] = value;
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(KEY_CONFIRM),
              onPressed: () => changePasswordAlertAction(),
            ),
            FlatButton(
              child: Text(KEY_CANCEL),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _showPasswordChangeResultDialog(
      BuildContext context, bool result, String errorDesc) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          //title: Text('Are you sure?'),
          title: Icon(
            result ? Icons.done : Icons.error,
            size: 170.0,
          ),
          content: Text(
            KEY_PASSWORD_CHANGE +'\n${result ? KEY_SUCCESS : KEY_FAILED}${result ? '' : '\n' + errorDesc}',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(KEY_OK),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  Widget getMainView(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
        child: Form(
          // key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(70.0),
            children: <Widget>[
              Icon(
                Icons.account_circle,
                size: 100.0,
              ),
              SizedBox(height: 10.0),
              AppTextField(
                tfValue: _formData[name],
                placeHolderName: name,
                readOnly: true,
                interactiveSel: false,
                validator: (String value) {
                  // if(value.trim().length <= 0){
                  if (value.isEmpty) {
                    return KEY_THIS_SHOULD_NOT_BE_EMPTY;
                  }
                  return null;
                },
                onSaved: (String value) {
                  _formData[name] = value;
                },
              ),
              AppTextField(
                tfValue: _formData[mobileNumber],
                placeHolderName: mobileNumber,
                readOnly: true,
                interactiveSel: false,
                validator: (String value) {
                  // if(value.trim().length <= 0){
                  if (value.isEmpty) {
                    return KEY_THIS_SHOULD_NOT_BE_EMPTY;
                  }
                  return null;
                },
                onSaved: (String value) {
                  _formData[mobileNumber] = value;
                },
              ),
              AppTextField(
                tfValue: _formData[emailID],
                placeHolderName: emailID,
                readOnly: true,
                interactiveSel: false,
                validator: (String value) {
                  // if(value.trim().length <= 0){
                  if (value.isEmpty) {
                    return KEY_THIS_SHOULD_NOT_BE_EMPTY;
                  }
                  return null;
                },
                onSaved: (String value) {
                  _formData[emailID] = value;
                },
              ),
              SizedBox(height: 40.0),
              _buildChangePasswordButton(context),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(KEY_MY_PROFILE),
      ),
      body: getMainView(context),
    );
  }
}
