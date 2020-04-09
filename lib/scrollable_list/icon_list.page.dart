import 'package:animation_test/scrollable_list/icon_list.model.dart';
import 'package:flutter/material.dart';

import 'icon_list.api.dart';
import 'icon_list.ui.dart';

class IconListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IconListPageState();
  }
}

class _IconListPageState extends State<IconListPage> {
  Future<IconList> futureIconList;

  @override
  void initState() {
    super.initState();
    futureIconList = IconListApi.fetchIconList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<IconList>(
      future: futureIconList,
      builder: this.builder,
    );
  }

  Widget builder(BuildContext context, AsyncSnapshot<IconList> snapshot) {
    if (snapshot.hasData) {
      return IconListUi(icons: snapshot.data);
    } else if (snapshot.hasError) {
      return Text("${snapshot.error}");
    }
    return CircularProgressIndicator();
  }
}
