import 'package:api_call/screen/provider/post_provider.dart';
import 'package:api_call/screen/view/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => PostProvider(),
      )
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => postscreen(),
      },
    ),
  ));
}