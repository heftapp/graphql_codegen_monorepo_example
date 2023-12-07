import 'package:flutter/material.dart';
import 'package:graphql_codegen_monorepo_example_graphql/apps/app1/lib/query.graphql.dart';
import 'package:graphql_codegen_monorepo_example_feature1/main.dart';

printQuery(Query$Q q) {
  final user = q.user;
  if (user == null) {
    return;
  }
  printF(user);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text(
          'Welcome to my app!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
