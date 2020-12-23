import 'package:flutter/material.dart';
import 'fadeInScroll.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: YourPage()),
    );
  }
}

// class FadingWidgetExample extends StatelessWidget {
//   final ScrollController scrollController = ScrollController();
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       controller: scrollController,
//       slivers: <Widget>[
//         SliverAppBar(
//           pinned: true,
//           title: FadeOnScroll(
//             scrollController: scrollController,
//             fullOpacityOffset: 180,
//             child: Text("I'm going to fade"),
//           ),
//         ),
//         SliverList(
//           delegate:
//               SliverChildBuilderDelegate((BuildContext context, int index) {
//             return ListTile(
//               title: Text('Row $index'),
//             );
//           }),
//         )
//       ],
//     );
//   }
// }
