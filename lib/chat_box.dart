import 'package:flutter/material.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({Key? key}) : super(key: key);

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message',
            style: TextStyle(fontSize: 26, color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
                leading: CircleAvatar(
                  child: Image.asset('assets/images/Profile.jpg', scale: 5),
                  backgroundColor: Colors.red,
                  maxRadius: 30,
                ),
                title: Text(
                  'Name',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )),
            Text(
              'Hello Everyone',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text(
                  'You',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                backgroundColor: Colors.red,
                maxRadius: 30,
              ),
              title: Image.asset('assets/images/Profile.jpg', scale: 5),
            ),
            Text(
              'Hello Everyone',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            ListTile(
                leading: CircleAvatar(
                  child: Image.asset('assets/images/Profile.jpg', scale: 5),
                  backgroundColor: Colors.red,
                  maxRadius: 30,
                ),
                title: Text(
                  'Name',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )),
            Text(
              'Hello Everyone',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text(
                  'You',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                backgroundColor: Colors.red,
                maxRadius: 30,
              ),
              title: Image.asset('assets/images/Profile.jpg', scale: 5),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Type message'),
            ),
          ],
        ),
      ),
    );
  }
}
