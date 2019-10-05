import 'package:flutter/material.dart';


class MyCoupons extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Mycouponstate();

}

class _Mycouponstate extends State<MyCoupons>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: anycoupons(),
    );
  }

  Widget anycoupons(){

    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Padding(padding: EdgeInsets.fromLTRB(400, 0, 0, 0)),
          Icon(Icons.face),
          SizedBox(height: 20,),
          
          Text('oops!!No Coupons?',style: TextStyle(fontSize: 25),),
          

              SizedBox(height: 50,),
              RaisedButton(child: Text('BUY COUPONS NOW'), onPressed: () {

                  Navigator.pushNamed(context, '/BuyCoupons');

              },)
          ],
        ),
    );
  }
  
}