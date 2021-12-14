import 'package:flutter/material.dart';
import 'package:sliverappbar/main.dart';
import 'package:sliverappbar/second_page.dart';
import 'package:sliverappbar/third_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverAppBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyHomePage(title: 'Sliver'))),
                child: const Text('SliverAppBar + SliverList')),
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SecondPage())),
                child: const Text('AppBar inside SliverAppBar')),
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ThirdPage())),
                child: const Text('TabBar with SliverAppBar'))
          ],
        ),
      ),
    );
  }
}
