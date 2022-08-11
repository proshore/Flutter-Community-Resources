import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_serialization_example/models/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var jsonString = '{"name": "John Smith","email": "john@example.com","address": {"street": "My st.","city": "New York"}}';

  var userName = '';

  var email = '';

  var address = '';

  var type = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Json Serialization Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                parseJsonManually(jsonString);
              },
              child: const Text("Parse Json Manually"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                parseJsonUsingModel(jsonString);
              },
              child: const Text("Parse Json Using Model"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                parseJson(jsonString);
              },
              child: const Text("Using Json serialization"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              type + '\n' +
              userName + '\n' + email + '\n' +
              address,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void parseJsonManually(String jsonString) {
    Map<String, dynamic> user = jsonDecode(jsonString);
    type = "Manually Parsed: ";
    userName = 'Howdy, ${user['name']}';
    email = 'We  sent the verification link to ${user['email']}.';
    address = '${user['address']['street']}, ${user['address']['city']}';
    setState(() {});
  }

  void parseJsonUsingModel(String jsonString) {
    User user = User.fromModelJson(jsonDecode(jsonString));
    type = "Parsed using Model: ";
    userName = 'Howdy, ${user.name}';
    email = 'We sent the verification link to ${user.email}.';
    address = '${user.address.street}, ${user.address.city}';
    setState(() {});
  }

  void parseJson(String jsonString) {
    User user = User.fromJson(jsonDecode(jsonString));
    type = "Parse Json: ";
    userName = 'Howdy, ${user.name}';
    email = 'We sent the verification link to ${user.email}.';
    address = '${user.address.street}, ${user.address.city}';
    setState(() {});
  }
}
