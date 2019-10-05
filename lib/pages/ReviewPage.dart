import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Reviewpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Reviewstate();
    
        

}


class _Reviewstate extends State<Reviewpage>{
  @override
  Widget build(BuildContext context) {
       return new Scaffold(
         appBar: new AppBar(
           backgroundColor: Colors.lightBlueAccent,
           centerTitle: true,
          title : new Text('Reviews & Ratings'),
         ),
         body: SingleChildScrollView(
           child: secondview(),
         ),
       );
  }

  Widget maincard(){

    return  Card(

      child: reviewpage(),
    );

  }

   Widget secondcard(){

    return  Card(

      child: totalreviews(),
    );

  }


  Widget secondview(){
    return Container(

        child: Column(
          children: <Widget>[
            maincard(),
            secondcard(),
          ],
        ),
    );
  }

  Widget reviewpage(){

    return Container(
      
        child: Row(
          children: <Widget>[
            SizedBox(height: 70,),
            Padding(padding: EdgeInsets.fromLTRB(50, 100, 0, 100)),
            Text(
            '4.5',
  style: TextStyle( fontSize: 100),
),
starview(),
          ],
          
          
        ),

    );
  }

  Widget starview(){

    return Container(
      
        child: Column(
          children: <Widget>[
            SizedBox(height: 5,), 
             FlutterRatingBarIndicator(
                            rating: 2.75,
                            itemCount: 5,
                            itemSize: 18.0,
                            emptyColor: Colors.amber.withAlpha(50),
                          ),
                     reviewcount(),    
          ],
        ),

    );
  }

  Widget reviewcount(){

    return Container(
     child: Row(
       children: <Widget>[
          Text(
            '4,235',
  style: TextStyle( fontSize: 20),
          ),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0),),
          Icon(Icons.person)
       ],
     ),

    );
  }


  Widget totalreviews(){

    return Container(
        child: Column(
          children: <Widget>[
                      SizedBox(height: 5,),
                      Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0),),
                     Image.asset(
                      'assets/app_icon.png',
                      height: 150,
                    ),  
                    Container(
                       padding: EdgeInsets.all(5.0),   
                      child: Column(
                       //      crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                           Row(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Merchant Name',
                                style: TextStyle(fontSize: 20.0),
                              ),
                             
                            ],
                          ),
                          Text('Veg / Non-Veg'),
                          SizedBox(height: 5.0),
                          FlutterRatingBarIndicator(
                            rating: 2.75,
                            itemCount: 5,
                            itemSize: 18.0,
                            emptyColor: Colors.amber.withAlpha(50),
                          ),
                          SizedBox(height: 7.0),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(width: 10.0),
                              FlatButton(
                                color: Colors.yellow,
                                splashColor: Colors.yellow,
                                onPressed: () => {},
                                child: Text('Offer'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ), 
          ],
        ),
         
    );
  }

}