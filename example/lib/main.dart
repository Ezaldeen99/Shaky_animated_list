import 'package:flutter/material.dart';
import 'package:shaky_animated_listview/widgets/animated_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimatedListView(
            // scrollDirection: Axis.horizontal,
          duration: 100,
            children: List.generate(
                21,
                (index) => Card(
                      elevation: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      shadowColor: Colors.black,
                      color: Colors.grey[900],
                      child: SizedBox(
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.green[500],
                                radius: 60,
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://avatars.githubusercontent.com/u/30810111?v=4"),
                                  //NetworkImage
                                  radius: 50,
                                ), //CircleAvatar
                              ), //CircleAvatar
                              const SizedBox(
                                height: 10,
                              ), //SizedBox
                              Text(
                                'Ezaldeen99',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.green[900],
                                  fontWeight: FontWeight.w500,
                                ), //Textstyle
                              ), //Text
                              const SizedBox(
                                height: 10,
                              ), //SizedBox
                              const Text(
                                'Animated list demo',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ), //Textstyle
                              ), //Text
                              const SizedBox(
                                height: 10,
                              ), //SizedBoxSizedBox
                            ],
                          ), //Column
                        ), //Padding
                      ), //SizedBox
                    ))));
  }
}
