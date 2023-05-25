import 'package:dotted_border/dotted_border.dart';
import 'package:face_recoginition/custom_ui/DetailScreen.dart';
import 'package:face_recoginition/marico_ui/maricoHome.dart';
import 'package:face_recoginition/quiz_app/QuizHome.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'animations/Animations.dart';
import 'custom_ui/CustomWidgets.dart';
import 'face_recognition/FaceDetectorView.dart';
import 'food_delivery_screens/menuScreen.dart';
import 'food_delivery_screens/orderScreen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      //home:FaceDetectorView()
      //home: SplashScreen()));
      //home: SecondScreen()));
      // home: FirstScreen()));
       //home: MenuPage()));
      // home: OrderPage()));
      // home: MaricoHome()));
      // home: QuizHome()));
       //home: CustomUI()));
  routes: {
    '/': (context) => CustomUI(),
  '/details': (context) => DetailScreen(),
}
  ));
}
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return CustomUI();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return DetailScreen();
          },
        ),
      ],
    ),
  ],
);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.infinity,
      height: double.infinity,
      //color: Color.fromRGBO(210, 221, 93, 100),
      //color: Colors.teal,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(231, 242, 34, 100),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 10,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.apps, color: Colors.black),
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.density_medium_sharp)),
          ],
        ),
        body: ListView(
          children: [
            //Center(child: Text("Market \nyour growth\n strategy",style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold))),
            Center(
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: [
                    TextSpan(text: 'Market '),
                    WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.0),
                        child: Icon(
                          Icons.monitor_heart,
                          size: 50,
                        ),
                      ),
                    ),
                    TextSpan(text: '\nyour growth\n strategy'),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 180,
              width: 150,
              //color: Colors.amber,
              child:Image.network("https://www.insureon.com/-/jssmedia/blog/posts/2021/photo_group-of-employees-working-on-project.png?h=370&iar=0&w=750&rev=3faabd3c0f7c4e11966caaa037fa4fc8")
            ),

            Padding(
              padding: const EdgeInsets.only(top:28.0),
              child: Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(0),
                      width: 120,
                      decoration: BoxDecoration(
                          //border: Border.all(color: Colors.black, width: 1),
                          color: Colors.black,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(18)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "Get Started",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_circle_right,
                            color: Colors.white,
                          )
                        ],
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: double.infinity,
      height: double.infinity,
      //color: Color.fromRGBO(210, 221, 93, 100),
      //color: Colors.teal,
      child: Scaffold(
        // backgroundColor: Color.fromRGBO(171, 175, 48, 100),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          //iconTheme: const IconThemeData(color: Colors.black),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(3.0),
                child: Text(
                  "Welcome back,",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(3.0),
                child: Text(
                  "Carolina Turner,",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          actions: [
            Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, right: 18),
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxtQq3PWBsaWqHj9fV5H2ZFkU8sXY_07uFi8yvA4uPZg&s"),
                      radius: 20),
                ),
                Positioned(
                  left: 2,
                  bottom: 4,
                  child: new Container(
                    padding: const EdgeInsets.all(2),
                    decoration: new BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 14,
                      minHeight: 14,
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
                //Text("Carolina Turner,",style: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.w700),)
              ],
            ),
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            //Center(child: Text("Market \nyour growth\n strategy",style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold))),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Try to find...',
                  fillColor: Colors.white,
                  filled: true,
                  isDense: true,
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Perform the search here
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: new BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Task-based\nexplanation process",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  DottedBorder(
                      color: Colors.black,
                      strokeWidth: 0.5,
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(12),
                      padding: const EdgeInsets.all(6),
                      child: Card(
                          color: Colors.grey.shade50,
                          elevation: 0,
                          margin: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color.fromRGBO(
                                                  210, 221, 93, 100))),
                                  child: const Text(
                                    "Add task",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )),
                              const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text("Creatives \nfor branging"),
                              )
                            ],
                          ))),
                  Expanded(
                    flex: 2,
                    // width: 250,height:150,
                    child: Container(
                      height: 140,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Card(
                              //color: Colors.grey.shade50,
                              // elevation: 0,
                              margin: const EdgeInsets.all(10.0),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                        Color>(
                                                    Colors.grey.shade50)),
                                        child: const Text(
                                          "Review",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Text(
                                          "Verification \nprocess with team"),
                                    )
                                  ],
                                ),
                              )),
                          Card(
                              //color: Colors.grey.shade50,
                              // elevation: 0,
                              margin: const EdgeInsets.all(10.0),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                        Color>(
                                                    Colors.grey.shade50)),
                                        child: const Text(
                                          "Review",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Text(
                                          "Verification \nprocess with team"),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      children: [
                        TextSpan(text: 'Flows List '),
                        WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.0),
                            child: Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    "See all",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0, bottom: 5),
                      child: Text(
                        "Document Verification",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        "3 min ago",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0, bottom: 5, right: 18),
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(210, 221, 93, 100),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 12,
                      ),
                    ),
                    radius: 15,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 18.0, bottom: 5, top: 5, right: 18),
              child: const Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0, bottom: 5),
                      child: Text(
                        "Newbie onboarding",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        "5 days ago",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0, bottom: 5, right: 18),
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(210, 221, 93, 100),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 12,
                      ),
                    ),
                    radius: 15,
                  ),
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "",
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.black,
          //onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: double.infinity,
      height: double.infinity,
      //color: Color.fromRGBO(210, 221, 93, 100),
      //color: Colors.teal,
      child: Scaffold(
        // backgroundColor: Color.fromRGBO(171, 175, 48, 100),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          //iconTheme: const IconThemeData(color: Colors.black),
          leading: const Padding(
              padding: EdgeInsets.only(left: 18),
              child:
                  Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black)),
          title: const Padding(
            padding: EdgeInsets.all(3.0),
            child: Center(
                child: Text(
              "Overview",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
          ),
          actions: [
            const Padding(
                padding: EdgeInsets.only(top: 8.0, right: 18),
                child: Icon(Icons.more_vert, color: Colors.black)),
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 150.0,
                      child: CircleAvatar(
                        radius: 149.0,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 120.0,
                          backgroundColor: Colors.grey,
                          child: CircleAvatar(
                            radius: 119.0,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 80.0,
                              backgroundColor: Colors.grey,
                              child: CircleAvatar(
                                radius: 79.0,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxtQq3PWBsaWqHj9fV5H2ZFkU8sXY_07uFi8yvA4uPZg&s"),
                                    radius: 70),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      bottom: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.people,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    Positioned(
                      right: 25,
                      top: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.insert_chart,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                            color: Color.fromRGBO(
                              210,
                              221,
                              93,
                              10,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text("Performance",
                                      style: TextStyle(fontSize: 10)),
                                  Icon(
                                    Icons.bar_chart_outlined,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    Positioned(
                      right: 25,
                      bottom: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                            color: Color.fromRGBO(
                              210,
                              221,
                              93,
                              10,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        children: [
                                          TextSpan(
                                              text: '23',
                                              style: TextStyle(fontSize: 12)),
                                          WidgetSpan(
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 2.0),
                                              child: Icon(
                                                Icons.arrow_forward,
                                                size: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Text("better results",
                                    style: TextStyle(fontSize: 10))
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Stack(
                    children: [
                      Card(
                          color: Colors.black,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child:
                                        Icon(Icons.close, color: Colors.white),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Text(
                                  "Great results so far!",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.0, top: 10),
                                child: Text(
                                  "Do you want to see full history",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 18.0, top: 3, bottom: 18),
                                child: Text(
                                  "or send the message to this member?",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          left: 20, //top:1,
                          child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(
                                210,
                                221,
                                93,
                                10,
                              ),
                              child: Icon(Icons.star,
                                  size: 25, color: Colors.black)))
                    ],
                  ),
                ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "",
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.black,
          //onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class _MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.2);
    path.lineTo(size.width * 0.2, 0);
    path.lineTo(size.width * 0.8, 0);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
