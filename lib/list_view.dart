import 'package:flutter/material.dart';
import './list_view_data.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView.builder")),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (ctx, int index) {
            return GestureDetector(
              onTap: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ListViewdata(index, ctx)));
              },
              child: ListTile(
                  leading: const Icon(Icons.list),
                  trailing: const Text(
                    "Passing...",
                    style: TextStyle(color: Colors.green, fontSize: 15),
                  ),
                  title: Text("List item $index")),
            );
          }),
    );
  }
}
