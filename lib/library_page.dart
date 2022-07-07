import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class LibraryPage extends StatefulWidget {
  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.2,
          // bottomOpacity: 1.0,
          backgroundColor: Colors.white,
          centerTitle: false,
          toolbarHeight: 40,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(
                CupertinoIcons.globe,
                color: Colors.grey[700],
                size: 25,
              ),
            )
          ],
          title: Container(
            width: 300,
            height: 30,
            color: Colors.grey[200],
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[600],
                        fontSize: 15),
                    hintText: 'Search by title, author or series',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    )),
              ),
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Lists",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "MORE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue[700]),
                    )
                  ],
                ),
                SizedBox(
                  height: 250.0,
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text(
                            'Books That Everyone Should Read At Least One'),
                        isThreeLine: true,
                        subtitle: Text(
                            '93 books | 15,533 likes\nGelyn Sharma create'),
                        leading: Image.asset('assets/images/book1.jpg'),
                      ),
                      ListTile(
                        title: Text('Best Books Ever'),
                        subtitle:
                            Text('98 books | 8,155 likes\nSwapna Kumar create'),
                        leading: Image.asset('assets/images/book2.jpg'),
                      ),
                      ListTile(
                        title: Text('Best Books of the 20th Century'),
                        isThreeLine: true,
                        subtitle:
                            Text('96 books | 5743 likes\nBlaq Arsh create'),
                        leading: Image.asset('assets/images/book3.jpg'),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hot",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "MORE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue[700]),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 226, 225, 225),
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 4,
                      children: <Widget>[
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            child: Image.asset('assets/images/book1.jpg'),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            footer: Text(
                              'Author Name\n3.6 ★★★☆☆',
                            ),
                            child: Text(
                              'Book Name',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ), //just for testing, will fill with image later
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            child: Image.asset('assets/images/book2.jpg'),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            footer: Text(
                              'Author Name\n3.6 ★★★☆☆',
                            ),
                            child: Text(
                              'Book Name',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ), //just for testing, will fill with image later
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            child: Image.asset('assets/images/book3.jpg'),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            footer: Text(
                              'Author Name\n3.6 ★★★☆☆',
                            ),
                            child: Text(
                              'Book Name',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ), //just for testing, will fill with image later
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            child: Image.asset('assets/images/book4.jpg'),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            footer: Text(
                              'Author Name\n3.6 ★★★☆☆',
                            ),
                            child: Text(
                              'Book Name',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ), //just for testing, will fill with image later
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            child: Image.asset('assets/images/book5.jpg'),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            footer: Text(
                              'Author Name\n3.6 ★★★☆☆',
                            ),
                            child: Text(
                              'Book Name',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ), //just for testing, will fill with image later
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            child: Image.asset('assets/images/book6.jpg'),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            footer: Text(
                              'Author Name\n3.6 ★★★☆☆',
                            ),
                            child: Text(
                              'Book Name',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ), //just for testing, will fill with image later
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            child: Image.asset('assets/images/book7.jpg'),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            footer: Text(
                              'Author Name\n3.6 ★★★☆☆',
                            ),
                            child: Text(
                              'Book Name',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ), //just for testing, will fill with image later
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            child: Image.asset('assets/images/book8.jpg'),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            footer: Text(
                              'Author Name\n3.6 ★★★☆☆',
                            ),
                            child: Text(
                              'Book Name',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ), //just for testing, will fill with image later
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            child: Image.asset('assets/images/book9.jpg'),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            footer: Text(
                              'Author Name\n3.6 ★★★☆☆',
                            ),
                            child: Text(
                              'Book Name',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ), //just for testing, will fill with image later
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            child: Image.asset('assets/images/book10.jpg'),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            footer: Text(
                              'Author Name\n3.6 ★★★☆☆',
                            ),
                            child: Text(
                              'Book Name',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ), //just for testing, will fill with image later
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            child: Image.asset('assets/images/book11.jpg'),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 226, 225, 225),
                          child: GridTile(
                            footer: Text(
                              'Author Name\n3.6 ★★★☆☆',
                            ),
                            child: Text(
                              'Book Name',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ), //just for testing, will fill with image later
                          ),
                        ),
                      ],
                    ),
                  ),
                )
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
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.copy),
              label: 'Bookself',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: 'Me',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 43, 142, 223),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
