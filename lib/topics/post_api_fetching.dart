import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:widgetsfactory/Models/modelsvalue.dart';

class ApiExample1 extends StatefulWidget {
  const ApiExample1({super.key});

  @override
  State<ApiExample1> createState() => _ApiExample1State();
}

class _ApiExample1State extends State<ApiExample1> {
  List<Modelsvalue> modelsList = [];

  Future<List<Modelsvalue>> getApiData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      modelsList.clear();
      for (Map i in data) {
        modelsList.add(Modelsvalue.fromJson(i));
      }
      return modelsList;
    } else {
      return modelsList;
    }
  }

  @override
  Widget build(BuildContext context) {
    int indexn = modelsList.length;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post API'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text.rich(TextSpan(children: [
                  const TextSpan(
                      text: 'There Is ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueAccent)),
                  TextSpan(
                      text: ' $indexn ',
                      style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  const TextSpan(
                      text: 'Data In The ModelsList',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blueAccent))
                ])),
              ),
              FutureBuilder(
                future: getApiData(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: 300,
                        width: 700,
                        child: const Text('Loading...'),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: modelsList.length,
                      itemBuilder: (context, index) {
                        return Card(
                            child: Column(
                          children: [Text((modelsList[index].id) as String)],
                        ));
                      },
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
