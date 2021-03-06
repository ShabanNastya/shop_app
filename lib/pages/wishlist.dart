import 'package:shop_app/pages/widgets/wishlist_empty.dart';
import 'package:shop_app/pages/widgets/cart_empty.dart';
import 'package:shop_app/pages/widgets/cart_full.dart';
import 'package:shop_app/pages/widgets/wishlist_full.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  static const routeName = '/WishlistScreen';
  @override
  Widget build(BuildContext context) {
    List wishlistList = [];
    return wishlistList.isNotEmpty
        ? Scaffold(body: WishlistEmpty())
        : Scaffold(
            appBar: AppBar(
              title: Text('Wishlist ()'),
            ),
            body: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext ctx, int index) {
                return WishlistFull();
              },
            ),
          );
  }
}
