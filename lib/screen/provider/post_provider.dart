import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/post_model.dart';

class PostProvider extends ChangeNotifier {
  List<dynamic> postList = [];

  // Future<void> jsonParsing()
  // async{

  Future<void> postApiCall() async {
    String apilink = "https://jsonplaceholder.typicode.com/posts";
    Uri uri = Uri.parse(apilink);
    var resonse = await http.get(uri);
   // print(resonse.body);

    var json = jsonDecode(resonse.body);

    List<dynamic> postModelList =
    json.map((e) => PostModel().fromJson(e)).toList();
    postList = postModelList;
    notifyListeners();
  }
}
