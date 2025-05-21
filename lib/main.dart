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
  final TextEditingController nameController = TextEditingController(text: 'Jhen Monleon');
  final TextEditingController bioController = TextEditingController(text: 'ilove monfam');
  final TextEditingController hobby1Controller = TextEditingController(text: 'Coding');
  final TextEditingController hobby2Controller = TextEditingController(text: 'Beabadoobee');
  final TextEditingController hobby3Controller = TextEditingController(text: 'Volleyball');
  final TextEditingController phoneController = TextEditingController(text: '+63 0945 710 6031');
  final TextEditingController emailController = TextEditingController(text: 'jhen.monleon@gmail.com');
  final TextEditingController movieController = TextEditingController(text: 'Forest Gump');
  final TextEditingController songController = TextEditingController(text: 'Youre here thats the thing by beabadoobe');
  final TextEditingController sportController = TextEditingController(text: 'Volleyball');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
        centerTitle: true,
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
            TextField(
              controller: nameController,
              style: TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Your name',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 6),
            TextField(
              controller: bioController,
              style: TextStyle(color: Colors.grey[400], fontSize: 14),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Your bio',
                hintStyle: TextStyle(color: Colors.grey[600]),
              ),
            ),
            SizedBox(height: 20),

            Text('Skills & Hobbies', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ListTile(
              leading: Icon(Icons.code, color: Colors.purpleAccent),
              title: TextField(
                controller: hobby1Controller,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Hobby 1',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.music_note, color: Colors.purpleAccent),
              title: TextField(
                controller: hobby2Controller,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Hobby 2',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.sports_volleyball, color: Colors.purpleAccent),
              title: TextField(
                controller: hobby3Controller,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Hobby 3',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),

            SizedBox(height: 20),
            Text('Contact Info', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.purpleAccent),
              title: TextField(
                controller: phoneController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Phone number',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            ListTile(
              leading: Icon(Icons.email, color: Colors.purpleAccent),
              title: TextField(
                controller: emailController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),

            SizedBox(height: 20),
            Text('Favorites', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.movie, color: Colors.purpleAccent),
                    SizedBox(height: 5),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        controller: movieController,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Movie',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.music_note, color: Colors.purpleAccent),
                    SizedBox(height: 5),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        controller: songController,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Song',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.sports_volleyball, color: Colors.purpleAccent),
                    SizedBox(height: 5),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        controller: sportController,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Sport',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
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