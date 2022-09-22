import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Screen'),
        elevation: 2.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              if (kDebugMode) {
                print('Add button pressed');
              }
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        children: [
          CustomCardType1(),
          SizedBox(height: 20.0),
          CustomCardType2(
            name: "Dua Lipa - Levitating (feat. DaBaby)",
            image_url:
                'https://www.semana.com/resizer/0iH-1cKxoSvnSjglecXNy-mpkz8=/1200x675/filters:format(jpg):quality(50)//cloudfront-us-east-1.images.arcpublishing.com/semana/YQFUSIFQJZCRZGXRVMFWGPKBTM.jpg',
          ),
          SizedBox(height: 20.0),
          CustomCardType2(
            image_url:
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
          ),
          SizedBox(height: 20.0),
          CustomCardType2(
            image_url:
                'https://i.pinimg.com/originals/0e/03/2b/0e032b58deabb8e8402be732edba42e5.jpg',
          ),
          // CustomCardType1(),
          // CustomCardType1(),
          // CustomCardType1(),
          // CustomCardType1(),
        ],
      ),
    );
  }
}
