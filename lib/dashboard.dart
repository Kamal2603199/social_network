import 'package:flutter/material.dart';
import 'package:social_network/chat_box.dart';
import 'package:social_network/help_support.dart';
import 'package:social_network/home.dart';
import 'package:social_network/message.dart';
import 'package:social_network/messages.dart';
import 'package:social_network/subscribers.dart';
import 'package:social_network/top_contacts.dart';

import 'experience_memories.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent.shade100,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            color: Colors.tealAccent,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  child: Image.asset('assets/images/Man.png', scale: 4),
                  maxRadius: 70,
                ),
                Text(
                  'Name',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
                Divider(
                  color: Colors.black,
                ),
                new InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 22,
                      ),
                      Icon(Icons.home, color: Colors.black),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'HOME',
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                new InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Message()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 22,
                      ),
                      Icon(Icons.message, color: Colors.black),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'MESSAGES',
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                new InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Subscribers()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 22,
                      ),
                      Icon(Icons.subscriptions, color: Colors.black),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'MY SUBSCRIBERS',
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                new InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 22,
                      ),
                      Icon(Icons.settings, color: Colors.black),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'SETTINGS',
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                new InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => ChatBox()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 22,
                      ),
                      Icon(Icons.notifications, color: Colors.black),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'CHAT BOX',
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                new InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 22,
                      ),
                      Icon(Icons.memory, color: Colors.black),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'My Memories',
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            ExperienceMemories()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 22,
                      ),
                      Icon(Icons.notifications, color: Colors.black),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'Experience Memories',
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => HelpAndSupport()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 22,
                      ),
                      Icon(Icons.help, color: Colors.black),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'Help and Support',
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Messages()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 22,
                      ),
                      Icon(Icons.help, color: Colors.black),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'Send Message',
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => TopContacts()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 22,
                      ),
                      Icon(Icons.phone, color: Colors.black),
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'Top Contacts',
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
