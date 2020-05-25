
import 'package:flutter/material.dart';
import 'package:iosiki/main.dart';

void main() {
  runApp(MaterialApp(
    title: 'İos Uygulaması 1',
  ));
}

class Giris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/2f/2f/f1/2f2ff11d07f2836dfc4e9fa363d601a3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(''
                  'Giriş Yapıldı',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,

                ),
              ),
            ),
          ),Positioned(
            child: AppBar(
              title: Text("Giriş"),
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                  tooltip: 'Share',
                ),
              ],
            ),
          )
        ],),
    );
  }
}
class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/2f/2f/f1/2f2ff11d07f2836dfc4e9fa363d601a3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(''
                  'Profiliniz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,

                ),
              ),
            ),
          ),Positioned(
            child: AppBar(
              title: Text("Profil"),
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                  tooltip: 'Share',
                ),
              ],
            ),
          )
        ],),
    );
  }
}

class Ayarlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: <Widget>[
      Container(
      decoration: BoxDecoration(
          image: DecorationImage(
          image: NetworkImage(
          'https://i.pinimg.com/originals/2f/2f/f1/2f2ff11d07f2836dfc4e9fa363d601a3.jpg'),
      fit: BoxFit.cover,
    ),
    ),
    child: Center(
    child: Text(''
    'Ayarlarınız',
    style: TextStyle(
    color: Colors.white,
    fontSize: 30,

    ),
    ),
    ),
    ),Positioned(
              child: AppBar(
                title: Text("Ayarlar"),
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {},
                    tooltip: 'Share',
                  ),
                ],
              ),
            )
          ],),
    );
  }
}
class Anasayfa extends StatelessWidget {
  final String title;

  Anasayfa({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/2f/2f/f1/2f2ff11d07f2836dfc4e9fa363d601a3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(''
                  'Hoşgeldiniz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,

                ),
              ),
            ),
          ),
          Positioned(
            child: AppBar(
              title: Text("Anasayfa"),
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                  tooltip: 'Share',
                ),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(

          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[

            DrawerHeader(
              child: Text(
                'Menüler',
                style: TextStyle( color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/2f/2f/f1/2f2ff11d07f2836dfc4e9fa363d601a3.jpg'),
                fit: BoxFit.cover,
              ),
              ),
            ),

            /*decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
   'https://images.unsplash.com/photo-1547665979-bb809517610d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80'),
                fit: BoxFit.cover,
              ),*/
            ListTile(
              title: Text('                             Giriş Yap'),

              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Giris()),
                );
              },
            ),
            ListTile(
              title: Text('                               Profil'),

              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profil()),
                );
              },
            ),

            ListTile(
              title: Text('                              Ayarlar'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ayarlar()),
                );
              },
            ),
            ListTile(
              title: Text('                            Çıkış Yap'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}



