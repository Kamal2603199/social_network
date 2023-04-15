import 'package:flutter/material.dart';

class MyMemories extends StatefulWidget {
  const MyMemories({Key? key}) : super(key: key);

  @override
  State<MyMemories> createState() => _MyMemoriesState();
}

class _MyMemoriesState extends State<MyMemories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Memories',
            style: TextStyle(fontSize: 22, color: Colors.black)),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/images/Camera.png', scale: 30),
              backgroundColor: Colors.red,
              maxRadius: 80,
            ),
            title: Column(
              children: [
                Text(
                  'Upload',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                Text(
                  'Your Photo',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Icon(Icons.help, color: Colors.black),
                Icon(Icons.help, color: Colors.black),
              ],
            ),
            contentPadding: EdgeInsets.all(20),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/images/Camera.png', scale: 30),
              backgroundColor: Colors.red,
              maxRadius: 80,
            ),
            title: Column(
              children: [
                Text(
                  'Upload',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                Text(
                  'Your Photo',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Icon(Icons.help, color: Colors.black),
                Icon(Icons.help, color: Colors.black),
              ],
            ),
            contentPadding: EdgeInsets.all(20),
          ),
        ],
      ),
    );
  }
}
