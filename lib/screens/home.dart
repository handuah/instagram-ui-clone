import 'package:flutter/material.dart';

import 'user_feed.dart';
import 'search_page.dart';
import 'upload_page.dart';
import 'favourites_page.dart';
import 'user_page.dart';

import 'package:instagram_app/properties/styles.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
         
      //DECLARING THE TABBAR BOTTOMNAVIGATION 
      return DefaultTabController(
        length: 5, 
        child: Scaffold(
          backgroundColor: Colors.black26,
          body: TabBarView(children: <Widget>[
            Feed(),
            SearchPage(),
            UploadPage(),
            FavouritePage(),
            UserPage(),
          ],
          
          ),
          bottomNavigationBar: TabBar(
           indicatorColor: Styles.colorWhite, 
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.search)),
            Tab(icon: Icon(Icons.add_box)),
            Tab(icon: Icon(Icons.favorite_border)),
            Tab(icon: Icon(Icons.supervised_user_circle)),
          ],
            ),
            ),
        );
   
  }
}