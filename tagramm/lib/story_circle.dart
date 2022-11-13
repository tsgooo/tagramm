import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1 / 10,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
              ),
            ),
            const SizedBox(
              child: Text('oke doke'),
            ),
          ],
        ),
      ),
    );
  }
}
