import 'package:flutter/material.dart';
import 'package:weather_app/view/search_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
