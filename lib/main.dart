import 'package:anybook_ui/popular_list.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/home': (context) => MyApp(),
        // '/bookself': (context) => PopularList(),
        // '/library': (context) => PopularList(),
        // '/profile': (context) => PopularList(),
      },
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "AnyBooks",
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 15.0,
            ),
            Icon(
              Icons.headphones,
              color: Colors.black,
            ),
            SizedBox(
              width: 15.0,
            )
          ],
        ),
        body: 
        Padding(
          padding: EdgeInsets.all(10),
          child: Flexible(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/book1.jpg'),
                  width: 100.0,
                ),
                Container(
                  width: double.infinity,
                  color: Color.fromARGB(82, 112, 108, 108),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "The Morning Miracle",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Read 20%"),
                      new LinearPercentIndicator(
                        width: 140.0,
                        lineHeight: 14.0,
                        percent: 0.5,
                        center: Text(
                          "20%",
                          style: new TextStyle(fontSize: 12.0),
                        ),
                        backgroundColor: Colors.grey,
                        progressColor: Colors.blue,
                      ),
                      Text(
                        '>> A note to you, the reader',
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset('assets/images/book1.jpg'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset('assets/images/book2.jpg'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset('assets/images/book3.jpg'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset('assets/images/book4.jpg'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset('assets/images/book5.jpg'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset('assets/images/book6.jpg'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset('assets/images/book7.jpg'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset('assets/images/book8.jpg'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset('assets/images/book9.jpg'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset('assets/images/book10.jpg'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset('assets/images/book11.jpg'),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Bookself',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.copy),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: 'Me',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 43, 142, 223),
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, "/home");
                break;
              case 2:
                Navigator.pushNamed(context, "/library");
                break;
            }
          },
        ),
      ),
    );
  }
}
