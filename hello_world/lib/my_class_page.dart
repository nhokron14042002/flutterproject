// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter hello world',
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: const MyHomePage(
          title: "Home",
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  //final <String> popMenu = ["cast", "logout", "about"];

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.blue],
            ),
            // borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
        ),
        leading: Icon(
          Icons.home,
          color: Colors.red,
          size: 40,
        ),
        title: Text(
          "Du an nhom 2",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),

          //widget.title, //Home
          // style: const TextStyle(color: Colors.black),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (_) => <PopupMenuItem<String>>[
              new PopupMenuItem<String>(
                value: 'Cart',
                child: ListTile(
                  leading: Icon(Icons.settings), // Icon bạn muốn thêm vào
                  title: Text('Cart'), // Tiêu đề cho mục menu
                ),
              ),
              new PopupMenuItem<String>(
                  child: const Text('Setting'), value: 'Setting'),
              new PopupMenuItem<String>(
                  child: const Text('About'), value: 'About'),
              new PopupMenuItem<String>(
                  child: const Text('Logout'), value: 'Logout'),
            ],
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.add),
            color: Colors.black,
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "HOME",
            style: TextStyle(
                color: Colors.purple,
                fontSize: 36,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            "Trang chu",
            style: TextStyle(
              color: Colors.red,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                gradient: LinearGradient(colors: [
                  Colors.blue,
                  Color.fromARGB(255, 154, 48, 48),
                  Color.fromARGB(255, 26, 159, 50)
                ]),
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.home,
                    color: Colors.black,
                    size: 36,
                  ),
                  onPressed: () {
                    print("Tiêu tiền của pepper");
                    var snackBar = const SnackBar(
                      content: Text("Chao mung may da ve voi trang chu"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.account_box_outlined,
                    color: Colors.black,
                    size: 36,
                  ),
                  onPressed: () {
                    print("Tiêu tiền của pepper");
                    var snackBar = const SnackBar(
                      content: Text("Chao mung may da den voi danh ba"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                const Icon(
                  Icons.share,
                  color: Colors.orange,
                  size: 36,
                ),
                const Icon(
                  Icons.account_box,
                  color: Colors.orange,
                  size: 36,
                )
              ],
            ),
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       label: "logout",
      //       icon: Icon( Icons.logout)
      //     )

      //   ],

      // ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            label: "home",
            icon: Icon(
              Icons.home,
            )),
        BottomNavigationBarItem(
            label: "setting",
            icon: Icon(
              Icons.settings,
            )),
        BottomNavigationBarItem(
            label: "logout",
            icon: Icon(
              Icons.logout,
            ))
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.green,
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      drawer: ListView(
        scrollDirection: Axis.vertical,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.red),
            child: Text("XIN CHAO"),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: Text("Hello"),
          )
        ],
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';

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
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
              style: Theme.of(context).textTheme.headline4,
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

*/