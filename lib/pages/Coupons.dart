import 'package:flutter/material.dart';


class Coupons extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CouponsTypes();
  }
}

class _CouponsTypes extends State<Coupons> {
  String coupons = "";
  var couponnames = ['weekly', 'monthly'];
  var currentitemsselected = 'weekly';
   
           
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buy Coupons"),
      ),
      body: Container(
        alignment : Alignment.center,
              
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Select coupon $coupons",
              style : TextStyle(fontSize: 15.0)
                
            )),
            DropdownButton<String>(
              items: couponnames.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                    value: dropDownStringItem, child: Text(dropDownStringItem));
              }).toList(),
              onChanged: (String newValueSelected) {
                setState(() {
                  this.currentitemsselected = newValueSelected;
                });
              },
              value: currentitemsselected,
              
            ),
            
          ],
        ),
      ),
    );
  }
}
