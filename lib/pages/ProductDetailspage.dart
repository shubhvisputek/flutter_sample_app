import 'package:flutter/material.dart';


class ProductDetail extends StatefulWidget{
  @override
  _ProductDetailstate createState() => _ProductDetailstate();

}

class _ProductDetailstate extends State<ProductDetail>{
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
 
        body: SingleChildScrollView( 
        child: getcardview(),  
        ),

    );
  }


  
  Widget getcardview(){

   return Card(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0),),
                   // Positioned.fill(
                      // SizedBox(height: 50),
          Image.asset(
            'assets/app_icon.png',
            height: 150.0,
          ),
         // Padding(padding: EdgeInsets.fromLTRB(50, 0, 0, 50),),

              
                  //  ),
                    
                  ],
                ),
              ),
              
              Text('Merchant Name'),
              // Text('Veg/Non-Veg'),


               // Padding(padding: EdgeInsets.fromLTRB(100, 0, 0, 0),),
                                    FlatButton(
                      child: Text('Offer'),
                      onPressed: () {},
                    ),
                  
                
              
            ],
          ),
        );
        

  }

  // Widget getdetailexpandview(){

  //   return Card(
  //         color: Colors.white,
  //         child: Row(
  //           children: <Widget>[
  //             SizedBox(
  //               height: 180.0,
  //               child: Stack(
  //                 children: <Widget>[
  //                   Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0),),
  //                  // Positioned.fill(
  //                     // SizedBox(height: 50),
        
  //              // Padding(padding: EdgeInsets.fromLTRB(100, 0, 0, 0),),
  //                                   FlatButton(
  //                     child: Text('Buy Coupons'),
  //                     onPressed: () {},
  //                   ),
                  
  //                FlatButton(
  //                     child: Text('Todays Menu'),
  //                     onPressed: () {},
  //                   ),
              
  //           ],
  //               ),
  //         ),
  //       ),
  //   );

  }

 


