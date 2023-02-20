import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:my_first_app/model/user.dart';
import 'package:http/http.dart' as http;

const url = 'https://my-json-server.typicode.com/vken15/database_test/users';

List<User> parseUsers(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<User>((json) => User.fromMap(json)).toList();
}

Future<List<User>> fetchUser() async {
  final response = await http
      .get(Uri.parse(url));
    // Send authorization headers to the backend.
    // headers: {
    //   HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
    // },

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    // fromJson
    
    return compute(parseUsers, response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load user');
  }
}

Future<User?> fetchUserByUserName(String username) async {
  final response = await http
      .get(Uri.parse(url + "/?username=" + username));
  
  if (response.statusCode == 200) {
    List<User> maps = await compute(parseUsers, response.body);
    if (maps.isEmpty) {
      return null;
    }
    else {
      return maps.first;
    }
  } else {
    throw Exception('Failed to load user');
  }
}

Future<User> createUser(String username, String password, String name) async {
  final response = await http.post(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': username,
      'password': password,
      'name': name,
      'avatar': "assets/icons/avatar.png",
    }),
  );

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    //User user = User.fromMap(jsonDecode(response.body));
    //print(user.id);
    return User.fromMap(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create user.');
  }
}