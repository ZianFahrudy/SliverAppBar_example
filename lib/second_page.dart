import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

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
            bottom: AppBar(
              leadingWidth: 0,
              leading: const SizedBox.shrink(),
              title: const SizedBox(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a search term'),
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.check_box_outline_blank_sharp),
                ),
                title: Text('Product $index'),
              );
            }, childCount: 100),
          ),
        ],
      ),
    );
  }
}
