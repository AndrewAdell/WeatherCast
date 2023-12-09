import 'package:flutter/material.dart';
import 'package:weather_app/view/search_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const SearchScreen();
                }));
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: const Center(
          child: Text(
        'there is no weather 😌 \n search to get the waether',
      )),
    );
  }
}
