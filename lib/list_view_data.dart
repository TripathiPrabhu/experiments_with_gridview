import 'package:flutter/material.dart';


class ListViewdata extends StatelessWidget {
  int? index;
  ListViewdata(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () { Navigator.pop(context); },),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(index.toString(),
            style: TextStyle(
              fontSize: 80,
              color: Colors.green
            ),),
          ],
        ),
      ),
    );
  }
}
