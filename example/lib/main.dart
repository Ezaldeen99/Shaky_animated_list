import 'package:flutter/material.dart';
import 'package:shaky_animated_listview/animators/grid_animator.dart';
import 'package:shaky_animated_listview/widgets/animated_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static var gridSlides = [
    'https://media.architecturaldigest.com/photos/5f4e9c54072307c75638c0f1/1:1/w_1280%2Cc_limit/Screen%252520Shot%2525202020-09-01%252520at%2525203.08.43%252520PM.png',
    'https://thevfurniture.com/wp-content/uploads/2020/12/1364-Formost-33-Auburn-Front-View-3-seater.png',
    'https://i.pinimg.com/originals/ee/f4/aa/eef4aaa2668b68c701f462a94dd2f1b0.jpg',
    'https://5.imimg.com/data5/CM/AV/LJ/SELLER-68434442/designer-bedroom-furniture-500x500.jpg',
    'https://5.imimg.com/data5/SELLER/Default/2020/10/XJ/NO/BT/68434442/bedroom-furniture-500x500.jpg',
    'https://5.imimg.com/data5/PV/QI/FO/SELLER-21784207/designer-bedroom-furniture-500x500.jpg',
    'https://media.architecturaldigest.com/photos/5f4e9c54072307c75638c0f1/1:1/w_1280%2Cc_limit/Screen%252520Shot%2525202020-09-01%252520at%2525203.08.43%252520PM.png',
    'https://thevfurniture.com/wp-content/uploads/2020/12/1364-Formost-33-Auburn-Front-View-3-seater.png',
    'https://i.pinimg.com/originals/ee/f4/aa/eef4aaa2668b68c701f462a94dd2f1b0.jpg',
  ];

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

  Widget buildBottomBody(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
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
              children: gridSlides.map((i) => buildImage(i)).toList(),
            ),
          )
        ],
      ),
    );
  }
}

Widget buildImage(String image) {
  return GridAnimatorWidget(
    child: Padding(
      padding: const EdgeInsets.all(4),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Image.network(
          image,
        ),
      ),
    ),
  );
}

Widget buildHeader() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
    child: Image.network(
      'https://www.incimages.com/uploaded_files/image/1920x1080/getty_509107562_2000133320009280346_351827.jpg',
    ),
  );
}
