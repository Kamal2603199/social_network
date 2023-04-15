import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message',
            style: TextStyle(fontSize: 26, color: Colors.black)),
      ),
      body:
      ListView.separated(
          primary: false,
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, i) {
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.teal,width: 0.5)),
                child: ListTile(leading: Icon(Icons.person),
                  title: Text("Name",),
                  subtitle: Text("Contact Number",),
                  trailing: Icon(Icons.access_alarm),),
              ),
            );
          }, separatorBuilder: (BuildContext context, int index)
      { return Divider(); },),
    );
  }
}
