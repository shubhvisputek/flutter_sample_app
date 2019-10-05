import 'package:flutter/material.dart';
import '../Utils/String.dart';

class MyAccount extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      key: _scaffoldKey,

      appBar: AppBar(  
        title: Text(KEY_MY_ACCOUNT, textAlign: TextAlign.center),
        elevation: 0.0,
      ),
      body: getMainView(context),
    );
  }

  Widget getMainView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Card(
                margin: EdgeInsets.all(0),
                elevation: 0.0,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                        contentPadding: EdgeInsets.all(8.0),
                        title: Text(KEY_Name),
                        subtitle: Text(KEY_MOBILE_NUMBER + "\n" + KEY_EMAIL_ID),
                        // trailing: Icon(Icons.arrow_forward_ios), 
                        leading: Icon(
                          Icons.account_circle,
                          size: 35.0,
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/MyProfile');
                        })
                  ],
                ),
              ),
            ),
            Divider(height: 0.5, color: Colors.black38),
            MyList(
              listViewData: [
                KEY_MY_COUPENS,
                KEY_MY_ORDER,
                KEY_FAVOURITE,
                KEY_WALLET,
                KEY_REFER_AND_EARN,
                KEY_SETTINGS,
                KEY_HELP,
                KEY_ABOUT_US,
                KEY_LOG_OUT,
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  final List<String> listViewData;

  MyList({this.listViewData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 0.0,
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: listViewData.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return Column(   
                children: <Widget>[
                  ListTile(
                    title: Text(listViewData[index]),
                    //trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () => onTapped(context, listViewData[index]),
                  ),
                  listViewData.length - 1 != index
                      ? Divider(height: 0, color: Colors.black38)
                      : Divider(height: 0, color: Colors.transparent),
                ],
              );
            }),
      ),
    );
  }

  void onTapped(BuildContext context, String sel) {
    //Scaffold.of(context).showSnackBar(SnackBar(content: Text(sel)));
    switch (sel) {
      case KEY_MY_COUPENS: Navigator.pushNamed(context, '/MyCoupons');
        break;
      case KEY_MY_ORDER: Navigator.pushNamed(context, '/MyOrders');
        break;
      case KEY_FAVOURITE: Navigator.pushNamed(context, '/Favourite');
        break;
      case KEY_WALLET: Navigator.pushNamed(context, '/Wallet');
        break;
      case KEY_REFER_AND_EARN: Navigator.pushNamed(context, '/ReferAndEarn');
        break;
      case KEY_SETTINGS: Navigator.pushNamed(context, '/Settings');
        break;
      case KEY_HELP: Navigator.pushNamed(context, '/Help');
        break;
      case KEY_ABOUT_US: Navigator.pushNamed(context, '/AboutUs');
        break;
      case KEY_LOG_OUT: Navigator.pushReplacementNamed(context, '/SignIn');
        break;
    }
  }
}

/*

OfflineBuilder(
        debounceDuration: Duration.zero,
        connectivityBuilder: (
          BuildContext context,
          ConnectivityResult connectivity,
          Widget child,
        ) {
          if (connectivity == ConnectivityResult.none) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Home'),
              ),
              body:
                  Center(child: Text('Please check your internet connection!')),
            );
          }
          return child;
        },
        child: 

*/
