import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: MediaQuery.of(context).size.height * 5 / 6,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const Text(
                      'za ner ni',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.menu),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.favorite_outline),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.message),
                    ),
                    Icon(Icons.send),
                  ],
                ),
                const Icon(Icons.bookmark),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: const [
                Text('Liked by '),
                Text(
                  'dongoooooo',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(' and '),
                Text(
                  'temee',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8),
            child: RichText(maxLines: 2,
              text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'yohohohooh ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text: 'irguu psda ig postndoo zondoo olon ym bichtsen shaajin asjfbjkwbeofb wev wuev howvbuqev ihqeivuieq vqeivuqei fiqe fgqifqe ugqu fqhvf qfhfquof qefu '),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
