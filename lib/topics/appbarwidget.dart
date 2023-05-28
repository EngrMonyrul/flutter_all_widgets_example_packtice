import 'dart:html';

import 'package:flutter/material.dart';

class Example20 extends StatefulWidget {
  const Example20({Key? key}) : super(key: key);

  @override
  State<Example20> createState() => _Example20State();
}

class _Example20State extends State<Example20> with SingleTickerProviderStateMixin{

  //late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    //_tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Example of AppBar'),
          centerTitle: true,
          backgroundColor: Colors.pink,
          elevation: 10,
          actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.black,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.favorite, color: Colors.black,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.person, color: Colors.black,)),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          leading: IconButton(icon: const Icon(Icons.list), color: Colors.black, onPressed: () {  },),
          bottom: const TabBar(
            //controller: _tabController,
            labelColor: Colors.transparent,
            //indicatorColor: Colors.transparent,
            tabs: [
              Tab(text: 'Songs',),
              Tab(text: 'Playlist',),
              Tab(text: 'Genre',)
            ],
          ),
        ),
        body: Center(
          child: TabBarView(
            children: [
              Container(child: Text('Console 1'),),
              Container(child: Text('Console 2'),),
              Container(child: Text('Console 3'),),
            ],
          ),
        ),
      ),
    );
  }
}
