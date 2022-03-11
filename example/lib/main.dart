import 'package:example/widgets/gridview_list.dart';
import 'package:example/widgets/horz_list.dart';
import 'package:example/widgets/verstical_list.dart';
import 'package:flutter/material.dart';
import 'package:shaky_animated_listview/animators/grid_animator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: ThemeData.dark(), home: const Body());
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            btn1(context, "Show Grid animator", () {
              buildBottomBody(context);
            }),
            btn1(context, "Vertical List view animator", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const VerticalList();
              }));
            }),
            btn1(context, "Vertical Grid view animator", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const GridList();
              }));
            }),
            btn1(context, "Horizontal List view animator", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const HorzList();
              }));
            }),
          ],
        ),
      ),
    );
  }

  Widget btn1(BuildContext context, String text, Function() click) {
    return MaterialButton(
      color: Colors.grey[900],
      minWidth: 300,
      onPressed: click,
      child: Text(text),
    );
  }

  void buildBottomBody(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext innerContext) {
          return Container(
            height: MediaQuery.of(innerContext).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: <Widget>[
                buildHeader(),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    // shrinkWrap: true,
                    children: List.generate(9, (i) => buildImage()).toList(),
                  ),
                )
              ],
            ),
          );
        });
  }
}

Widget buildImage() {
  return GridAnimatorWidget(
    child: Padding(
      padding: const EdgeInsets.all(4),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Container(
          color: Colors.grey,
        ),
      ),
    ),
  );
}

Widget buildHeader() {
  return Padding(
    padding: const EdgeInsets.all(4),
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        width: double.infinity,
        height: 150,
        color: Colors.black38,
        child: const Center(
            child: Text(
          "Grid animator",
          style: TextStyle(fontSize: 30, color: Colors.white),
        )),
      ),
    ),
  );
}
