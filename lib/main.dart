import 'package:flutter/material.dart';
import 'package:sliverappbar/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.pink,
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Pantai', textScaleFactor: 1),
              background: Image.network(
                'https://img.freepik.com/free-vector/cartoon-summer-beach-paradise-nature-vacation-ocean-sea-seashore-seaside-landscape-background-illustration_102902-1385.jpg?size=626&ext=jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, index) => ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  child: const Placeholder(),
                ),
                title: Text(
                  'Place ${index + 1}',
                  textScaleFactor: 2,
                ),
              ),
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
