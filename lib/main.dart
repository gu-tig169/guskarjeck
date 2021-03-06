import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model.dart';
import 'screens/TodoListView.dart';

void main() {
  //Startar programmet, sätter hela appen i en ChangenotifierProvider som kan lyssna på förändringar av state
  //kan då använda consumers där appen ska ritas om på förändringar.
  var state = MyState();
  state.getTodoList();
  runApp(
    ChangeNotifierProvider(
      create: (context) => state,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: TodoListView(),
    );
  }
}
