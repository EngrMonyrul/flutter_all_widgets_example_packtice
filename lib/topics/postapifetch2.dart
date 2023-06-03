import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Models/Models2.dart';

class NewData extends StatefulWidget {
  const NewData({super.key});

  @override
  State<NewData> createState() => _NewDataState();
}

class _NewDataState extends State<NewData> {
  List<Models2> postsModels = [];

  Future<List<Models2>> getPostsData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      postsModels.clear();
      for (Map value in data) {
        postsModels.add(Models2.fromJson(value));
      }
      return postsModels;
    } else {
      return postsModels;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post API'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: FutureBuilder(
              future: getPostsData(),
              builder: (contex, snapshot) {
                return Card(
                    child: ListView.builder(
                  itemCount: postsModels.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ID - ${postsModels[index].id}'),
                        Text('User ID - ${postsModels[index].userId}'),
                        Text('Title - ${postsModels[index].title}'),
                        Text('Body - ${postsModels[index].body} \n\n'),
                      ],
                    );
                  },
                ));
              },
            ))
          ],
        ),
      ),
    );
  }
}
