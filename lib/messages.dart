import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages',
            style: TextStyle(fontSize: 22, color: Colors.black)),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/images/Camera.png', scale: 100),
              backgroundColor: Colors.red,
              maxRadius: 25,
            ),
            title: Text(
              'Upload',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            subtitle: Text(
              'Your Photo',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            contentPadding: EdgeInsets.all(20),
          ),
          SizedBox(
            width: 350,
            height: 100,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Photo Caption'),
            ),
          ),
          ElevatedButton(
            child: Text('POST'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
