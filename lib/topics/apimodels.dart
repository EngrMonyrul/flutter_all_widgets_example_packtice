import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApIModels extends StatefulWidget {
  const ApIModels({super.key});

  @override
  State<ApIModels> createState() => _ApIModelsState();
}

class _ApIModelsState extends State<ApIModels> {
  List<dataModels> dataList = [];

  Future<List<dataModels>> getData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      dataList.clear();
      for (Map i in data) {
        dataModels allData =
            dataModels(title: i['title'], url: i['url'], id: i['id']);
        dataList.add(allData);
      }
      return dataList;
    } else {
      return dataList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: getData(),
                builder: (context, AsyncSnapshot<List<dataModels>> snapshot) {
                  return Card(
                    child: ListView.builder(
                      itemCount: dataList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title:
                              Text('ID - ${snapshot.data![index].id.toString()}'),
                          subtitle: Text(
                              'Title - ${snapshot.data![index].title.toString()}'),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                snapshot.data![index].url.toString()),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class dataModels {
  late String title, url;
  late int id;

  dataModels({required this.title, required this.url, required this.id});
}
