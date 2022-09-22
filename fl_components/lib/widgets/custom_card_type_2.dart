import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String image_url;
  final String? name, description;

  const CustomCardType2({
    Key? key,
    required this.image_url,
    this.name,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
              image_url,
            ),
            placeholder: AssetImage("assets/jar-loading.gif"),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            ListTile(
              leading: Icon(Icons.album),
              title: Text(name ?? "The Enchanted Nightingale"),
              subtitle: Text(description ??
                  "Music by Julie Gable. Lyrics by Sidney Stein."),
            ),
          if (name != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
        ],
      ),
    );
  }
}
