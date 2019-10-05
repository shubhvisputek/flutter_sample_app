import 'package:flutter/material.dart';
import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:like_button/like_button.dart';

class MerchantList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: FloatingSearchBar.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return getCardView(context, "Merchant Name", "Specialization", "Veg / Non-Veg", "2.9", "Offer", false);
        },
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: FlatButton(
            padding: EdgeInsets.all(0),
            child: Icon(Icons.sort),
            onPressed: () {},
          ),
        ),
        trailing: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: FlatButton(
            padding: EdgeInsets.all(0),
            child: Icon(Icons.filter_list),
            onPressed: () {},
          ),
        ),
        // drawer: Drawer(
        //   child: Container(),
        // ),
        onChanged: (String value) {},
        onTap: () {},
        decoration: InputDecoration.collapsed(
          hintText: "Search...",
        ),
      ),
    );
  }

  Widget getCardView(BuildContext context, String merchantName, String merchantSpecialization, String vegOrNonVeg, String rating, String offer, bool isWishListItem) {
    return InkWell(
      onTap: () => {
        Navigator.pushNamed(context, '/MerchantProductList')
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/thali_icon.png',
              height: 80.0,
            ),
            SizedBox(width: 5.0),
            Flexible(
              flex: 2,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        getMerchantNameAndDetailsInCardView(merchantName, merchantSpecialization, vegOrNonVeg),
                        LikeButton(
                          size: 25,
                          // onTap: (bool isLiked) {
                          //   return onLikeButtonTap(isLiked, item);
                          // },
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Opacity(
                      opacity: 0.5,
                      child: Container(
                        //margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        height: 1.0,
                        color: Colors.black12,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        getRatingViewInCardView(rating),
                        getOfferViewInCardView(offer),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getOfferViewInCardView(String offer) {
    return Text(
      offer,
      // textAlign: ,
      style: TextStyle(
        // fontSize: 10.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget getRatingViewInCardView(String rating) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.star,
          color: Colors.green,
          size: 15.0,
        ),
        rating.isNotEmpty ? Text(': '+ rating) : Text(': --'),
      ],
    );
  }

  Widget getMerchantNameAndDetailsInCardView(String merchantName, String merchantSpecialization, String vegOrNonVeg) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          merchantName,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          merchantSpecialization,
          style: TextStyle(
            // fontSize: 15.0,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          vegOrNonVeg,
          style: TextStyle(
            // fontSize: 10.0,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  // Future<bool> onLikeButtonTap(bool isLiked, TuChongItem item) {
  //   ///send your request here
  //   ///
  //   final Completer<bool> completer = new Completer<bool>();
  //   Timer(const Duration(milliseconds: 200), () {
  //     item.isFavorite = !item.isFavorite;
  //     item.favorites =
  //         item.isFavorite ? item.favorites + 1 : item.favorites - 1;

  //     // if your request is failed,return null,
  //     completer.complete(item.isFavorite);
  //   });
  //   return completer.future;
  // }

}
