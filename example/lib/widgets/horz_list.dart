import 'package:flutter/material.dart';
import 'package:shaky_animated_listview/scroll_animator.dart';

class HorzList extends StatelessWidget {
  const HorzList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 200),
        child: AnimatedListView(
          duration: 100,
          scrollDirection: Axis.horizontal,
          children: List.generate(
            21,
            (index) => const Card(
              elevation: 50,
              margin: EdgeInsets.symmetric(horizontal: 10),
              shadowColor: Colors.black,
              color: Colors.grey,
              child: SizedBox(
                height: 300,
                width: 200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
