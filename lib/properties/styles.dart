import 'package:flutter/material.dart';

abstract class Styles {
  static const Color colorWhite = Colors.white;
  static const TextStyle userChannelText = TextStyle(
                                                      fontSize: 12,
                                                      fontStyle: FontStyle.normal,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w600,
                                                    );
  static const TextStyle storyUsername = TextStyle(
    fontSize: 11,
    fontStyle: FontStyle.normal,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

   static const TextStyle storyComments = TextStyle(
     fontSize: 11,
    fontStyle: FontStyle.normal,
    color: Colors.white54,
    fontWeight: FontWeight.normal,
  );
   
    static const TextStyle storyCaption = TextStyle(
     fontSize: 11,
    fontStyle: FontStyle.normal,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );                                                
}