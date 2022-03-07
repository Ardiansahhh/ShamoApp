import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PostResult {
  String id, name, job, created;

  PostResult({
    required this.id,
    required this.name,
    required this.job,
    required this.created,
  });

  factory PostResult.createPostResult(Map<String, dynamic> json) {
    return PostResult(
      id: json['id'],
      name: json['name'],
      job: json['job'],
      created: json['createdAt'],
    );
  }

  static Future<PostResult> connectToAPI(String name, String job) async {
    var APIURL = Uri.parse('https://reqres.in/api/users');
    var APIResult = await http.post(APIURL, body: {'name': name, 'job': job});
    var jsonObject = json.decode(APIResult.body);
    return PostResult.createPostResult(jsonObject);
  }
}
