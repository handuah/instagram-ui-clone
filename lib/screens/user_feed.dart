import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:instagram_app/properties/styles.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
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
        height: 110.0,
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


          UserStory(
            'assets/images/a.jpg', 
            'assets/images/a.jpg', 
            'handuah', 
            'Another Day', 
            '190', 
            '1,234'),

            UserStory(
            'assets/images/b.jpg', 
            'assets/images/c.jpg', 
            'josiah', 
            'Another Day', 
            '2000', 
            '1,234'),

            UserStory(
            'assets/images/c.jpg', 
            'assets/images/e.jpg', 
            'joyce', 
            'Another Day', 
            '1,000,987', 
            '1,234'),

            UserStory(
            'assets/images/d.jpg', 
            'assets/images/d.jpg', 
            'raphael', 
            'Another Day', 
            '190', 
            '1,234'),

        ],
      ),
    );
  }
}


//Circular Avatar Widget
class Channels extends StatefulWidget {

  final String userImage;
  final String userName;

  Channels(@required this.userImage, @required this.userName );

  @override
  _ChannelsState createState() => _ChannelsState();
}

class _ChannelsState extends State<Channels> {
  // String userImage;
  // String userName;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
       Container(
              margin: EdgeInsets.symmetric(horizontal:10,),
              height: 65.0,
              width: 65.0,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(50.0),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red[300], width: 2.0, style: BorderStyle.solid),
                image: DecorationImage(
                  image: AssetImage(widget.userImage),
                  fit: BoxFit.cover,
                  ),
                  ),
            ),
      SizedBox(height: 10,),
      Text(widget.userName, style: Styles.userChannelText,),
     ],);
  }
}


//Story Declaration
class UserStory extends StatefulWidget {
  final String userProfileImage;
  final String userStoryImage;
  final String userName;
  final String userCaption;
  final String numberOfLikes;
  final String numberOfComments;

   UserStory(
    @required this.userProfileImage,
    @required this.userStoryImage,
    @required this.userName,
    this.userCaption,
    @required this.numberOfLikes,
    @required this.numberOfComments,
  );

  
  @override
  _UserStoryState createState() => _UserStoryState();
}

class _UserStoryState extends State<UserStory> {


  //declaring a variable false for liked icon
  bool isLiked = false;
  bool isBookmarked = false;
   
  @override
  Widget build(BuildContext context) {
    // String userName;
    String numberOfLikes;
    String numberOfComments;
    return Container(
  // color: Colors.red,
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
                image: DecorationImage(image: AssetImage(widget.userProfileImage),
                fit: BoxFit.fill,
                ),
                ),
            ),
            SizedBox(width: 10),
            Text(widget.userName, style: Styles.userChannelText,),
            SizedBox(width: 250),
            IconButton(icon: Icon(Icons.filter_list), onPressed: (){}, color: Styles.colorWhite,),
          ],
        ),
        ),

        Container(
              height: 400,
              width: 450,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.userStoryImage),
                fit: BoxFit.cover
                ),
              ),
            ),
        
        Padding(
          padding: EdgeInsets.symmetric(horizontal:3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              //Code to create a liked button to red and vice versa
              IconButton(icon: 
              !isLiked ? Icon(Icons.favorite_border, color: Styles.colorWhite):(Icon(Icons.favorite, color: Colors.red,)), 
              onPressed: (){
                isLiked = !isLiked;
                setState((){});
              }, iconSize: 18,),
              //End of Code to create a liked button to red and vice versa
              
              IconButton(icon: Icon(Icons.mode_comment), onPressed: (){}, color: Styles.colorWhite, iconSize: 18),
              IconButton(icon: Icon(Icons.inbox), onPressed: (){}, color: Styles.colorWhite, iconSize: 18),
              SizedBox(width: 200),

              //Code to toggle between selected Bookmarked Button and unselected Bookmarked button
              IconButton(icon: 
              !isBookmarked ? Icon(Icons.bookmark_border, color: Styles.colorWhite,):(Icon(Icons.bookmark, color: Colors.white)), 
              onPressed: (){
                isBookmarked = !isBookmarked;
                setState(() {                 
                });
              },),
              //End of Code

              
            ],
          ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(4, 5, 250, 30),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('$numberOfLikes likes', style: Styles.storyUsername, textAlign: TextAlign.left,),
              RichText(
                text: TextSpan(
                  text: widget.userName,
                  style: Styles.storyUsername,
                  children: <TextSpan>[
                    TextSpan(text: (widget.userCaption), style: Styles.storyCaption,),
                  ],
                ),
                ),
              Text('View All $numberOfComments comments', style: Styles.storyComments,), 
            ],
          ),
          ), 
    ],
  ),
);
  }
}
