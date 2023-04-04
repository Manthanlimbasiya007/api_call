import 'dart:convert';

import 'package:http/http.dart' as http;
class ApiHelper
{
  Future<void>postApiCall()
  async{
    String apilink="https://jsonplaceholder.typicode.com/posts";
    Uri uri = Uri.parse(apilink);
    var resonse = await http.get(uri);
    //print(resonse.body);

    var json = jsonDecode(resonse.body);
  }
}