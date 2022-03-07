import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  String id, name;
  

  User({required this.id, required this.name});

  factory User.createUser(Map<String, dynamic> json) {
    return User(
      id: json['id'].toString(),
      name: json['first_name'] + " " + json['last_name'],
    );
  }

  static Future<User> connectToAPI(String id) async {
      var APIURL = Uri.parse('https://reqres.in/api/users/' + id);
      var APIResult = await http.get(APIURL);
      var jsonObject = json.decode(APIResult.body);
      var userData = (jsonObject as Map<String, dynamic>)['data'];
      return User.createUser(userData);
  }

  static Future<List<User>> getUsers(String page) async {
    var APIURL = Uri.parse('https://reqres.in/api/users?page=' + page);
    var APIResult = await http.get(APIURL);
    var jsonObject = json.decode(APIResult.body);
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];
    List<User> users = [];

    for (int i = 0; i < listUser.length; i++) 
      users.add(User.createUser(listUser[i]));
    return users;
  } 
}
