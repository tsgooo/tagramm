import 'package:flutter/material.dart';
import 'package:tagramm/post_view.dart';
import 'package:tagramm/story_circle.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List people = [
    'Dondog',
    'Dulmaa',
    'Damar',
    'Dookoo',
    'DinDor',
    'Deegii'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Instagram',
            ),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.favorite_outlined),
                ),
                Icon(Icons.share),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 110,
            child: ListView.builder(
              itemCount: people.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return StoryCircle(name: people[index]);
              }),
            ),
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 3,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemBuilder: ((context, index) {
                return const PostView();
              }),
            ),
          ),
        ],
      ),
    );
  }
}
