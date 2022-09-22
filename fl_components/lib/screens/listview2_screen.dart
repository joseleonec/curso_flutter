import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  static const Map<String, dynamic> options = {
    "Map": {
      "leading_icon": Icon(Icons.map),
      "trailing_icon": Icon(Icons.arrow_forward_ios, color: Colors.indigo),
    },
    "Album": {
      "leading_icon": Icon(Icons.album),
      "trailing_icon": Icon(Icons.arrow_forward_ios, color: Colors.indigo),
    },
    "Phone": {
      "leading_icon": Icon(Icons.phone),
      "trailing_icon": Icon(Icons.arrow_forward_ios, color: Colors.indigo),
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView1Screen'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          leading: options[options.keys.elementAt(index)]['leading_icon'],
          title: Text(options.keys.elementAt(index)),
          trailing: options[options.keys.elementAt(index)]['trailing_icon'],
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
      // children: [
      //   ...options.entries.map((entry) {
      //     return ListTile(
      //       leading: entry.value['leading_icon'],
      //       title: Text(entry.key),
      //       trailing: entry.value['trailing_icon'],
      //     );
      //   }).toList(),
      // ],
      // ),
    );
  }
}
