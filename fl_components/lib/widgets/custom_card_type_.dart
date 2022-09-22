import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.map,
              color: Theme.of(context).primaryColor,
            ),
            title: Text('Map'),
            subtitle: Text('Map subtitle'),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Ok"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
