import 'package:flutter/material.dart';

class Appbarrr extends StatelessWidget {
  const Appbarrr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.camera),
          Text(
            'ITSTagram mfa',
            style: TextStyle(
              fontSize: 15
            ),
          ),
          Icon(Icons.send),
        ],
      ),
    );
  }
}
