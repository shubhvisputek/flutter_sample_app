import 'package:flutter/material.dart';
import './pages/MyAccount.dart';
import './pages/MyProfile.dart';
import './pages/SplashScreen.dart';
import './pages/SignIn.dart';
import './pages/SignUp.dart';
import './pages/ForgotPassword.dart';
import './pages/ConfirmMobileNo.dart';
import './pages/HomePage.dart';
import './pages/ProductDetailspage.dart';
import './pages/BuyCoupons.dart';
import './Utils/String.dart';
import './pages/ReviewPage.dart';
import './pages/MyCoupons.dart';
import './pages/MyOrders.dart';
import './pages/MerchantProductList.dart';

var routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => SplashScreen(),
  '/MyAccount': (BuildContext context) => MyAccount(),
  '/MyProfile': (BuildContext context) => MyProfile(),
  '/SignIn': (BuildContext context) => SignIn(),
  '/SplashScreen': (BuildContext context) => SplashScreen(),
  '/SignUp': (BuildContext context) => SignUp(),
  '/ForgotPassword': (BuildContext context) => ForgetPasswordPage(),
  '/ConfirmMobileNo': (BuildContext context) => ConfirmMobileNo(),
  '/HomePage': (BuildContext context) => HomePage(),
  '/ProductDetail': (BuildContext context) => ProductDetail(),
  '/BuyCoupons': (BuildContext context) => Buycoupons(),
  '/HomePage': (BuildContext context) => HomePage(),
  '/ProductDetail': (BuildContext context) => ProductDetail(),
  '/ReviewPage': (BuildContext context) => Reviewpage(),
  '/MyCoupons': (BuildContext context) => MyCoupons(),
  '/MyOrders': (BuildContext context) => MyOrders(),
  '/MerchantProductList': (BuildContext context) => MerchantProductList(),
};

void main() {
  runApp(
    MaterialApp(
      title: KEY_APP_NAME,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.pink,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      routes: routes,
    ),
  );
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return;
//   }
// }
