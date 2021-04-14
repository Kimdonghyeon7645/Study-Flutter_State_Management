import 'package:flutter/material.dart';

class WithGetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX", style: TextStyle(fontSize: 30)),
          Text("0", style: TextStyle(fontSize: 50)),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
