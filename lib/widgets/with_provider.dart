import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/controller/count_controller_with_provider.dart';

class WithProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Provider", style: TextStyle(fontSize: 30)),
          Consumer<CountControllerWithProvider>(
            builder: (_, snapshot, child) =>
                Text("${snapshot.count}", style: TextStyle(fontSize: 50)),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Provider.of<CountControllerWithProvider>(context, listen: false)
                  .increase();
            },
          ),
        ],
      ),
    );
  }
}
