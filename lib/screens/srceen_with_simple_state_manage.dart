import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/controller/count_controller_with_provider.dart';
import 'package:todo_list/widgets/with_getx.dart';
import 'package:todo_list/widgets/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("단순 상태 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: WithProvider(),
              ),
            ),
            Expanded(child: WithGetX()),
          ],
        ),
      ),
    );
  }
}
