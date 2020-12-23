import 'package:flutter/material.dart';

class YourPage extends StatefulWidget {
  YourPage({Key key}) : super(key: key);

  @override
  _YourPageState createState() => _YourPageState();
}

class _YourPageState extends State<YourPage> {
  ScrollController _scrollController;
  double _scrollPosition;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Position $_scrollPosition pixels'),
      ),
      body: Container(
          child: ListView.builder(
        controller: _scrollController,
        itemCount: 200,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.mood),
            title: Text('Item: $index'),
          );
        },
      )),
    );
  }
}
