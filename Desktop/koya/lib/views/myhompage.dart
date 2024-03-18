import 'package:flutter/material.dart';
import 'package:koya/const.dart';
import 'package:koya/views/app_menu.dart';
import 'package:koya/views/homepage/homepage1.dart';
import 'package:koya/views/homepage/searchview.dart';

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
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    PageController homepageController = PageController();

    int pageIndex = 1;

    return Scaffold(
        drawer: const AppMenu(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          onTap: (value) {
            setState(() {
              pageIndex = value;
            });

            homepageController.animateToPage(pageIndex,
                duration: const Duration(milliseconds: 100),
                curve: Curves.ease);
          },
          currentIndex: pageIndex,
          iconSize: 16,
          selectedItemColor: Colors.black,
          unselectedItemColor: AppStyle.lightTextColor,
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.search,
              ),
              activeIcon: Icon(
                Icons.search_rounded,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.favorite_outline,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.person_2_outlined,
              ),
            ),
          ],
        ),
        backgroundColor: AppStyle.bgColor,

        // appBar: AppBar(
        //   // TRY THIS: Try changing the color here to a specific color (to
        //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        //   // change color while the other colors stay the same.
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //   // Here we take the value from the MyHomePage object that was created by
        //   // the App.build method, and use it to set our appbar title.
        //   title: Text(widget.title),
        // ),
        body: SafeArea(
            child: PageView(
          controller: homepageController,
          // onPageChanged: (value) {
          //   homepageController.animateToPage(value,
          //       duration: const Duration(milliseconds: 300),
          //       curve: Curves.easeOut);
          //   // nextPage(duration: )
          // },
          children: const [
            HomeView(),
            SearchView(),
            Center(
              child: Text("Favourite"),
            ),
            Center(
              child: Text("Profile"),
            ),
          ],
        ))
        // Center(
        //   // Center is a layout widget. It takes a single child and positions it
        //   // in the middle of the parent.
        //   child: Column(
        //     // Column is also a layout widget. It takes a list of children and
        //     // arranges them vertically. By default, it sizes itself to fit its
        //     // children horizontally, and tries to be as tall as its parent.
        //     //
        //     // Column has various properties to control how it sizes itself and
        //     // how it positions its children. Here we use mainAxisAlignment to
        //     // center the children vertically; the main axis here is the vertical
        //     // axis because Columns are vertical (the cross axis would be
        //     // horizontal).
        //     //
        //     // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
        //     // action in the IDE, or press "p" in the console), to see the
        //     // wireframe for each widget.
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       const Text(
        //         'You have pushed the button this many times:',
        //       ),
        //       Text(
        //         '$_counter',
        //         style: Theme.of(context).textTheme.headlineMedium,
        //       ),
        //     ],
        //   ),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
