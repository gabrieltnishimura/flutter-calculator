import 'package:flutter/material.dart';

class IconListItem {
  final int id;
  final String title;
  final Icon icon;

  IconListItem({this.id, this.title, this.icon});

  factory IconListItem.fromJson(Map<String, dynamic> json) {
    Icon icon;
    switch (json['title']) {
      case 'Mail':
        icon = Icon(Icons.mail);
        break;
      case 'Calendar':
        icon = Icon(Icons.calendar_today);
        break;
      case 'People':
        icon = Icon(Icons.people);
        break;
      case 'Newsfeed':
        icon = Icon(Icons.new_releases);
        break;
      case 'OneDrive':
        icon = Icon(Icons.insert_drive_file);
        break;
      case 'SharePoint':
        icon = Icon(Icons.share);
        break;
      case 'Tasks':
        icon = Icon(Icons.shopping_basket);
        break;
      case 'Delve':
        icon = Icon(Icons.timeline);
        break;
      default:
        icon = Icon(Icons.warning);
        break;
    }

    return IconListItem(id: json['id'], title: json['title'], icon: icon);
  }
}
