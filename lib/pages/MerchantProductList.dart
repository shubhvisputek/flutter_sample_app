import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class MerchantProductList extends StatefulWidget {
  @override
  _MerchantProductListState createState() => _MerchantProductListState();
}

class _MerchantProductListState extends State<MerchantProductList> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          pinned: true,
          expandedHeight: 150.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Demo'),
            // background: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Text('Info'),
            //   ],
            // ),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('Grid Item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget getCardView(String merchantName, String merchantSpecialization,
      String vegOrNonVeg, String rating, String offer, bool isWishListItem) {
    return Container(
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
                      getMerchantNameAndDetailsInCardView(
                          merchantName, merchantSpecialization, vegOrNonVeg),
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
        rating.isNotEmpty ? Text(': ' + rating) : Text(': --'),
      ],
    );
  }

  Widget getMerchantNameAndDetailsInCardView(
      String merchantName, String merchantSpecialization, String vegOrNonVeg) {
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
}
