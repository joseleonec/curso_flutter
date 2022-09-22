import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  static const Map<String, dynamic> options = {
    "Map": {
      "leading_icon": Icon(Icons.map),
      "trailing_icon": Icon(Icons.arrow_forward)
    },
    "Album": {
      "leading_icon": Icon(Icons.album),
      "trailing_icon": Icon(Icons.arrow_forward)
    },
    "Phone": {
      "leading_icon": Icon(Icons.phone),
      "trailing_icon": Icon(Icons.arrow_forward)
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView1Screen'),
      ),
      body: ListView(
        children: [
          // for (final entry in options.entries)
          //   ListTile(
          //     leading: entry.value,
          //     title: Text(entry.key),
          //   ),
          ...options.entries.map((entry) {
            return ListTile(
              leading: entry.value['leading_icon'],
              title: Text(entry.key),
              trailing: entry.value['trailing_icon'],
            );
          }).toList(),

          // ListTile(
          //   leading: Icon(Icons.map),
          //   title: Text('Map'),
          // ),
          // ListTile(
          //   leading: Icon(Icons.photo_album),
          //   title: Text('Album'),
          // ),
          // ListTile(
          //   leading: Icon(Icons.phone),
          //   title: Text('Phone'),
          // ),
        ],
      ),
    );
  }
}
