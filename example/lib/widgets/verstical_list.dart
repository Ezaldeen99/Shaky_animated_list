import 'package:flutter/material.dart';
import 'package:shaky_animated_listview/scroll_animator.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: AnimatedListView(
              // scrollDirection: Axis.horizontal,
              duration: 100,
              children: List.generate(
                  21,
                  (index) => Card(
                        elevation: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        shadowColor: Colors.black,
                        color: Colors.grey,
                        child: SizedBox(
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blue[500],
                                  radius: 60,
                                  child: const CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://avatars.githubusercontent.com/u/30810111?v=4"),
                                    //NetworkImage
                                    radius: 50,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Scroll to start',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.blue[900],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Animated list demo',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))),
        ));
  }
}
