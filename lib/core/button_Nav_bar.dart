// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class ButtonNavBar extends StatefulWidget {
//   const ButtonNavBar({super.key});

//   @override
//   State<ButtonNavBar> createState() => _ButtonNavBarState();
// }

// class _ButtonNavBarState extends State<ButtonNavBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//         child: bottomNavigationBar: NavigationBar(
//             labelBehavior: labelBehavior,
//             selectedIndex: currentPageIndex,
//             onDestinationSelected: (int index) {
//               setState(() {
                
//                 currentPageIndex = index;
//               });
//             },
//             destinations: const <Widget>[
//               NavigationDestination(
//                 selectedIcon: Icon(
//                   Icons.home,
//                   color: Colors.green,
//                 ),
//                 icon: Icon(Icons.home),
//                 label: 'Home',
//               ),
//               NavigationDestination(
//                 selectedIcon: Icon(Icons.add, color: Colors.green),
//                 icon: Icon(Icons.add),
//                 label: 'New Order',
//               ),
//               NavigationDestination(
//                 selectedIcon: Icon(
//                   Icons.chat,
//                   color: Colors.green,
//                 ),
//                 icon: Icon(Icons.chat),
//                 label: 'Chat',
//               ),
//               NavigationDestination(
//                 selectedIcon: Icon(
//                   Icons.person,
//                   color: Colors.green,
//                 ),
//                 icon: Icon(Icons.person),
//                 label: 'Account',
//               ),
//             ],
//           ),
//        ,
//     );
//   }
// }