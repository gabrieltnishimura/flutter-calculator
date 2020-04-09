import 'package:animation_test/scrollable_list/icon_list.model.dart';
import 'package:flutter/material.dart';

class IconListUi extends StatelessWidget {
  IconList icons;
  IconListUi({this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 40),
        child: GridView.count(
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
            crossAxisCount: 2,
            children: this.eachButton()));
  }

  List<Widget> eachButton() {
    return this
        .icons
        .list
        .map((item) => Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Center(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: item.icon,
                  tooltip: item.title,
                  onPressed: () {
                    return null;
                  },
                ),
                Text(item.title)
              ],
            ))))
        .toList();
  }
}
