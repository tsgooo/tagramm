import 'package:flutter/material.dart';
import 'package:tagramm/app_bar.dart';
import 'package:tagramm/story_circle.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 1 / 15,
            child: const Appbarrr(),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return const StoryCircle();
              }),
              itemCount: 99,
              scrollDirection: Axis.horizontal,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 1,
            itemBuilder: ((context, index) {
              return Container(
                color: Colors.blue,
                height: MediaQuery.of(context).size.height * 4 / 6,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 30,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.amber,
                            ),
                          ),
                          Column(
                            children: const [
                              Text('za ner ni'),
                              Text('neg hereggu ym bichnee'),
                            ],
                          ),
                          const Icon(Icons.more),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.purple,
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(Icons.favorite_outline),
                            Icon(Icons.message),
                            Icon(Icons.send),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(Icons.save),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
