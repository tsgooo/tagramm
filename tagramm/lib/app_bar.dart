import 'package:flutter/material.dart';

class Appbarrr extends StatelessWidget {
  const Appbarrr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'ITSTagram mfa',
            style: TextStyle(fontSize: 15),
          ),
          Row(
            children: const [
              Icon(Icons.add),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.favorite_outlined),
              ),
              Icon(Icons.messenger),
            ],
          )
        ],
      ),
    );
  }
}
