import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget get abalogo{
  return Row(
    children: [
      Text("ABA",style: TextStyle(letterSpacing: 3.0),),
      SizedBox(width: 1.0,),
      Text("'",style: TextStyle(color: Colors.red),),
      SizedBox(width: 7.0,),
      Text("Mobile")
    ],
  );
}