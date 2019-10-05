//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../Utils/String.dart';
import '../widgets/TodaysMenu.dart';

class Buycoupons extends StatefulWidget {
 // Buycoupons () : super();

  final String title = KEY_BUY_COUPONS;

  @override
  State<StatefulWidget> createState() => _BuyCouponState();
}

  class Coupons{
    int id;
     String name;
     String couponsdeduction;

    Coupons(this.id,this.name);
    
     static List<Coupons> getcompanies(){
        return<Coupons>[
          Coupons(1, 'Weekly-7 Coupons'),
          Coupons(2, 'Monthly-30 Coupons')
        ];
      }
  }

  class DCoupons{
    int id;
     String couponsdeduction;

    DCoupons(this.id,this.couponsdeduction);
    
     static List<DCoupons> setcoupons(){
        return<DCoupons>[
          DCoupons(1, 'Automatic'),
          DCoupons(2, 'Manually')
        ];
      }
  }

  class Tcoupons{

    int id;
    String timing;

    Tcoupons(this.id,this.timing);

   static List<Tcoupons> timingCoupons(){
     return<Tcoupons>[
       Tcoupons(1,'Lunch Time'),
       Tcoupons(2, 'Dinner Time'),
       Tcoupons(3, 'Lunch + Dinner'),
     ];
   }
  }


class _BuyCouponState extends State<Buycoupons>{

  List<Coupons> _companies = Coupons.getcompanies();

  List<DCoupons> _couponlist = DCoupons.setcoupons();

  List<Tcoupons> _timeCoupons = Tcoupons.timingCoupons();

  List<DropdownMenuItem<Coupons>>_dropdownMenuItems;

    List<DropdownMenuItem<DCoupons>>_shortmenu;
 
    List<DropdownMenuItem<Tcoupons>> _timemenu;
   
      bool _checkBoxVal = true;

  Coupons _selectedCoupons;
   
  DCoupons _selcoupon;
  
  Tcoupons _tcoupons;

  @override
  void initState(){
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedCoupons = _dropdownMenuItems[0].value;

    _shortmenu = buildropcouponitems(_couponlist);
    _selcoupon = _shortmenu[0].value;

    _timemenu = buildTimeCouponsitems(_timeCoupons);
    _tcoupons = _timemenu [0].value;

    super.initState();
  }

    

    List<DropdownMenuItem<Coupons>> buildDropdownMenuItems(List companies){
    List<DropdownMenuItem<Coupons>>  items = List();
    for(Coupons coupons in companies) {
      items.add(DropdownMenuItem(value: coupons,child: Text(coupons.name),
      ),
      );
    }
    return items;
    }

    List<DropdownMenuItem<DCoupons>> buildropcouponitems(List companies){
    List<DropdownMenuItem<DCoupons>>  items = List();
    for(DCoupons coupons in companies) {
      items.add(DropdownMenuItem(value: coupons,child: Text(coupons.couponsdeduction),
      ),
      );
    }
    return items;
    }
    



    List<DropdownMenuItem<Tcoupons>> buildTimeCouponsitems(List companies){
      List<DropdownMenuItem<Tcoupons>> items = List();
      for(Tcoupons coupons in companies){
        items.add(DropdownMenuItem(value: coupons,child: Text(coupons.timing),
        ),
        );
      }
      return items;
    }
    

    onChangeDropdownItem(Coupons selectedCoupons){
      setState(() {
       _selectedCoupons = selectedCoupons; 
      });

    }

    onChangeDropdownCoupon(DCoupons selcoupon){
      setState(() {
       _selcoupon = selcoupon; 
      });

    }

    onTimingCouponChanged(Tcoupons tcoupons){
      setState(() {
       _tcoupons = tcoupons; 
      });
    }

     
      
      

 @override
  Widget build(BuildContext context) {
    
    //return new MaterialApp(
     // debugShowCheckedModeBanner: false, 
      return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.lightBlueAccent ,
           centerTitle: true,    
          title:  new Text('Buy Coupons')
        ),
        body:    SingleChildScrollView(
       child : maincontainer(),
        
        ),
             
      );
    
  }

  Widget retcardview(){

    return Card(
      
      
        margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: getmainview(),
      
         
    );

        
  }

  Widget secondcardview(){

    return Card(
        margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: callsecondview(),
       

    );
  }

  
  Widget threecardview(){

    return Card(
      child: Column(
        children: <Widget>[
          callthirdview(),
        ],
      ),
    );
  }


  Widget maincontainer(){

    return Container(
    
    child: Column(

      children: <Widget>[
        getmainview(),
        secondcardview(),
        threecardview(),
            
         Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0),),
        SizedBox(height: 40,),
        getcouponsbutton(),
               // secondview(),
      ],
    ),
        

    );
  }

    Widget getmainview(){

       return Container(
         height: 350,
         width: 400,
        
    // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
         child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Select Coupons Types"),
              SizedBox(height: 20.0),
              DropdownButton(
                value: _selectedCoupons,
                items: _dropdownMenuItems,
                onChanged: onChangeDropdownItem,
              ), 
              // SizedBox(height: 20.0),
              // Text('Selected : ${_selectedCoupons.name}'),
              getcheckbox(),
                   Divider(height: 0.5, color: Colors.black38),
           
                 secondview(),
                  Divider(height: 0.5, color: Colors.black38),
           
                 lunchDinnerTime()

            ],
          ),
          
      );
    }
  

  Widget secondview(){

    return Container(

        height: 100,
      //   width: 100,

         child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
                   Text("Select Coupons Deduction Type"),
              SizedBox(height: 20.0),
              DropdownButton(
                value: _selcoupon, 
                items: _shortmenu,
                onChanged: onChangeDropdownCoupon,
              ),
              //  SizedBox(height: 20.0),
              // Text('Selected : ${_selcoupon.couponsdeduction}'),


            ],
          ),
        

    );
  }

  Widget lunchDinnerTime(){

    return Container(

       height: 100,
      // width: 100,
          
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Text('Select Time'),
            SizedBox(height: 20.0),
              DropdownButton(
                value: _tcoupons, 
                items: _timemenu,
                onChanged: onTimingCouponChanged,
              ),
                        ],
      ),
            );
  }


  Widget getcheckbox(){
      
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[


        Checkbox(
      onChanged: (bool value){
        setState(() => this._checkBoxVal = value);

      },
      value: this._checkBoxVal,
    ),
    Text('Deliver To Home')
        
      ],
    );
  }

    Widget callsecondview(){
      return Container(
        child: Column(
          children: <Widget>[
                basicrate(),
                basicratepart(),
          ],
        ),
      );
    }

    Widget callthirdview(){
      return Container(
        child: Column(
          children: <Widget>[
                calculaterate(),
                itemchangecalculate(),
                itemsdescription(),
          ],
        ),
      );
    }

  Widget basicrate(){
    return Container(
      height: 50,
    child : Row(
              
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,

      children: <Widget>[
        Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0),),
        SizedBox(height: 20,),
        Text('Basic Rate :'),

         // basicratepart(),
      ],
    ),
    );
      
  }

  Widget basicratepart(){
   return Container( 
child : Row(
  // mainAxisAlignment: MainAxisAlignment.center,
  // crossAxisAlignment: CrossAxisAlignment.center,

  children: <Widget>[
    Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
    SizedBox(height: 40,),
    Text('item'),
    Padding(padding: EdgeInsets.fromLTRB(100, 0, 15, 0)),

      SizedBox(height: 40,),
      Text('Price'),
      Padding(padding: EdgeInsets.fromLTRB(100, 0, 0, 0)),

      SizedBox(height: 40,),
      Text('Discount')
  ],

),
);

  }


  Widget calculaterate(){

    return Container(

        child: Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0),),
          SizedBox(height: 40,),
          Text('Calculate Rate :')
        ],
        ),

    );
  }


  Widget itemchangecalculate(){

    return Container(

        child: Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(150, 0, 0, 20),),
          Text('Items :')
        ],
        ),

    );
  }


  Widget itemsdescription(){

    return Container(
      child: Column(

      children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0),),
          SizedBox(height: 20,),
        Text('Price × Coupon Type =  Amount'),
        Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0),),
        SizedBox(height: 40,),
        Text('Discount  %  =  Amount'), 
        Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0),),
        SizedBox(height: 40,),
        Text('Final Total Amount = 65 ₹'),
        
      ],
      ),
    );
  }

  Widget getcouponsbutton(){

    return RaisedButton(
            child: 
            
            Text('Buy Coupons Now'),
                  
      onPressed: () {
        _showTermsAndConditionDialog(
                        context, todaysmenu);
         },

    );
  }


  void _showTermsAndConditionDialog(BuildContext context, RichText strTerms) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(KEY_TODAYS_MENU),
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

   

  

    

} 


