import 'package:flutter/material.dart';

import 'scrollable_list/icon_list.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: IconListPage()),
    );
  }
}
