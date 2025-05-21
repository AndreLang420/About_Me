import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About me'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/jhen.jpg'), 
            ),
            SizedBox(height: 10),
            Text('Jhen Monleon', style: TextStyle(fontSize: 24)),
            Text('ilove monfam'),
            SizedBox(height: 20),

            Text('Skills & Hobbies', style: TextStyle(fontSize: 20)),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Coding'),
            ),
            ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Beabadoobee'),
            ),
            ListTile(
              leading: Icon(Icons.sports_soccer),
              title: Text('Volleyball'),
            ),
            SizedBox(height: 20),

            Text('Contact Info', style: TextStyle(fontSize: 20)),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('+63 0945 710 6031'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('jhen.monleon@gmail.com'),
            ),
            SizedBox(height: 20),

            Text('Favorites', style: TextStyle(fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.movie),
                    Text('Forest Gump'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.music_note),
                    Text('Youre here thats the thing by beabadoobe'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.sports_basketball),
                    Text('Volleyball'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
