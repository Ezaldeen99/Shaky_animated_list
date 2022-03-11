import 'package:flutter/material.dart';
import 'package:shaky_animated_listview/scroll_animator.dart';

class GridList extends StatelessWidget {
  const GridList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: AnimatedGridView(
          duration: 100,
          crossAxisCount: 2,
          mainAxisExtent: 256,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: List.generate(
              21,
              (index) => Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.grey[700],
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 60,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://avatars.githubusercontent.com/u/30810111?v=4"),
                                //NetworkImage
                                radius: 50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ))),
    ));
  }
}
