import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Text(data: 'Home Screen'),
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              print('Add button pressed');
            },
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.menuOptions[index].icon,
              color: Theme.of(context).primaryColor),
          title: Text('Item ${AppRoutes.menuOptions[index].name}'),
          onTap: () {
            Navigator.pushNamed(
                context, "${AppRoutes.menuOptions[index].route}");
          },
        ),
        separatorBuilder: (_, __) => const Divider(
          color: Colors.black,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (kDebugMode) {
            print('Floating action button pressed');
          }
        },
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       counter++;
//     });
//   }

//   void _decrementCounter() {
//     setState(() {
//       counter--;
//     });
//   }

//   void _resetCounter() {
//     setState(() {
//       counter = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     const fontSizeColor =
//         TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red);
//     // ignore: dead_code
//     return Scaffold(
//       // appBar: Text(data: 'Home Screen'),
//       appBar: AppBar(
//         title: const Text('Home Screen'),
//         elevation: 2.0,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.add),
//             onPressed: () {
//               if (kDebugMode) {
//                 print('Add button pressed');
//               }
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text(
//               'Presione el bot??n para incrementar el contador',
//               style: fontSizeColor,
//             ),
//             Text(
//               '$counter',
//               style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: CustomFloatingActions(
//         onPressedIncrement: _incrementCounter,
//         onPressedDecrement: _decrementCounter,
//         onPressedReset: _resetCounter,
//       ),
//     );
//   }
// }

// class CustomFloatingActions extends StatelessWidget {
//   final Function onPressedIncrement;
//   final Function onPressedDecrement;
//   final Function onPressedReset;

//   const CustomFloatingActions({
//     Key? key,
//     required this.onPressedIncrement,
//     required this.onPressedDecrement,
//     required this.onPressedReset,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         FloatingActionButton(
//           onPressed: () => onPressedIncrement(),
//           // onPressed: null,
//           child: const Icon(Icons.plus_one_outlined),
//         ),
//         const SizedBox(width: 10),
//         FloatingActionButton(
//           onPressed: () => onPressedReset(),
//           child: const Icon(Icons.restart_alt_outlined),
//         ),
//         const SizedBox(width: 10),
//         FloatingActionButton(
//           onPressed: () => onPressedDecrement(),
//           child: const Icon(Icons.exposure_minus_1_outlined),
//         ),
//       ],
//     );
//   }
// }
