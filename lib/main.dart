import 'package:estudando/provider/user_provider.dart';
import 'package:estudando/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//https://www.youtube.com/watch?v=ViahqKZzZ7Y parei no minuto 46:55

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (ctx) => Users())],
      child: MaterialApp(
        title: 'Lista',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: UserList(),
      ),
    );
  }
}
