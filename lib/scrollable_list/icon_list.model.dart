import 'icon_list_item.model.dart';

class IconList {
  final List<IconListItem> list;

  IconList({this.list});

  factory IconList.fromJson(List json) {
    return IconList(
      list: json.map((each) => IconListItem.fromJson(each)).toList(),
    );
  }
}
