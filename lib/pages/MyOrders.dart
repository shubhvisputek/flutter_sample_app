import 'package:flutter/material.dart';


class MyOrders extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyOrdersState();

}

class _MyOrdersState extends State<MyOrders>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: anyorders(),
    );
  }

  Widget anyorders(){

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
          
          Text('oops!!No Orders Yet?',style: TextStyle(fontSize: 25),),
          

              SizedBox(height: 50,),
              RaisedButton(child: Text('Order NOW'), onPressed: () {

                  Navigator.pushNamed(context, '/MyAccount');

              },)
          ],
        ),
    );
  }
  
}
