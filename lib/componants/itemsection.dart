import 'package:flutter/material.dart';

class ItemSection extends StatefulWidget {
  const ItemSection({Key? key}) : super(key: key);

  @override
  State<ItemSection> createState() => _ItemSectionState();
}

class _ItemSectionState extends State<ItemSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 10),
      child: GridView.count(
        crossAxisCount: 5,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        children: [
          ElevatedButton(
            onPressed: (){},
            style: const ButtonStyle(
            ),
            child:const Card(
              child: Text('Container'),
            ),
          ),
          ElevatedButton(
            onPressed: (){},
            style: const ButtonStyle(
            ),
            child:const Card(
              child: Text('Container'),
            ),
          ),
          ElevatedButton(
            onPressed: (){},
            style: const ButtonStyle(
            ),
            child:const Card(
              child: Text('Container'),
            ),
          ),
          ElevatedButton(
            onPressed: (){},
            style: const ButtonStyle(
            ),
            child:const Card(
              child: Text('Container'),
            ),
          ),
          ElevatedButton(
            onPressed: (){},
            style: const ButtonStyle(
            ),
            child:const Card(
              child: Text('Container'),
            ),
          ),
        ],
      ),
    );
  }
}
