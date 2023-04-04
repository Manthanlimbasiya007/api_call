import 'dart:convert';

import 'package:api_call/utils/api_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/post_provider.dart';

class postscreen extends StatefulWidget {
  const postscreen({Key? key}) : super(key: key);


  @override
  State<postscreen> createState() => _postscreenState();
}

class _postscreenState extends State<postscreen> {

  PostProvider? postProviderTrue;
  PostProvider? postProviderFalse;

  @override
  Widget build(BuildContext context) {
    postProviderFalse = Provider.of<PostProvider>(context, listen: false);
    postProviderTrue = Provider.of<PostProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("API Call"),
          centerTitle: true,
        ),
        body:
        Column(
          children: [
            ElevatedButton(
              onPressed: () {
                postProviderFalse!.postApiCall();
                // ApiHelper apihelper = ApiHelper();
                // apihelper.postApiCall();
              },
              child: Text("Api call",),style: ElevatedButton.styleFrom(backgroundColor: Colors.black)
            ),
      Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${postProviderTrue!.postList[index].id}"),
              subtitle:
              Text("${postProviderTrue!.postList[index].title}"),
            );
          },
          itemCount: postProviderTrue!.postList.length,
        ),
      ),
          ],
        ),
      ),
    );
  }
}
