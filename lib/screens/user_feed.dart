import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:instagram_app/properties/styles.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.photo_camera), color: Colors.white,),
        title: Text('Instagram'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.message), onPressed: (){}, color: Colors.white),
        ],
      ),

      body: ListView(
        children: <Widget>[
        Container(
        padding: EdgeInsets.symmetric(vertical:5.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Channels('assets/images/a.jpg', 'handuah'),
            Channels('assets/images/b.jpg', 'josiah'),
            Channels('assets/images/c.jpg', 'raphael'),
            Channels('assets/images/d.jpg', 'joyce'),
            Channels('assets/images/e.jpg', 'ricky'),
            Channels('assets/images/f.jpg', 'sandra'),
          ],
        ),
      ),

      //Story Declaration
      Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal:5),
              child: Row(
                
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Colors.red[300], width: 2.0, style: BorderStyle.solid),
                      image: DecorationImage(image: AssetImage('assets/images/a.jpg'),
                      fit: BoxFit.fill,
                      ),
                      ),
                  ),
                  SizedBox(width: 10),
                  Text('handuah', style: Styles.userChannelText,),
                  SizedBox(width: 250),
                  IconButton(icon: Icon(Icons.filter_list), onPressed: (){}, color: Styles.colorWhite,),
                ],
              ),
              ),

              Container(
                    height: 400,
                    width: 450,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/a.jpg'),
                      fit: BoxFit.cover
                      ),
                    ),
                  ),
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal:3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.favorite_border), onPressed: (){}, color: Styles.colorWhite,),
                    IconButton(icon: Icon(Icons.mode_comment), onPressed: (){}, color: Styles.colorWhite,),
                    IconButton(icon: Icon(Icons.inbox), onPressed: (){}, color: Styles.colorWhite,),
                    SizedBox(width: 200),
                    IconButton(icon: Icon(Icons.bookmark_border), onPressed: (){}, color: Styles.colorWhite,),
                  ],
                ),
                ),

                Text('256 likes', style: Styles.userChannelText,),
                Text('handuah here we are again with the best knowlege', style: Styles.userChannelText,),
                Text('View All 100 comments', style: Styles.userChannelText,),  
          ],
        ),
      ),
        ],
      ),
    );
  }
}

//Circular Avatar Widget
class Channels extends StatelessWidget {
  final String userImage;
  final String userName;

  Channels(@required this.userImage, @required this.userName );

  @override
  Widget build(BuildContext context) {
     return Column(children: <Widget>[
       Container(
              margin: EdgeInsets.symmetric(horizontal:10,),
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(color: Colors.red[300], width: 5.0, style: BorderStyle.solid),
                image: DecorationImage(
                  image: AssetImage(userImage),
                  fit: BoxFit.fill,
                  ),
                  ),
            ),
      SizedBox(height: 10,),
      Text(userName, style: Styles.userChannelText,),
     ],);
  }
}