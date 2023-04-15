import 'package:flutter/material.dart';
import 'package:social_network/dashboard.dart';
import 'package:social_network/signup.dart';

import 'bottom_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checkBoxValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(10, 60, 10, 60),
      child: Container(
        height: 600,
        width: 400,
        decoration: BoxDecoration(color: Colors.tealAccent),
        child: Column(children: [
          SizedBox(
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              maxRadius: 70,
              child: Image.asset('assets/images/Man.png', scale: 4),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Your Name',
                  hintText: 'Enter Your Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter your email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Create Password'),
            ),
          ),
          Row(
            children: <Widget>[
              Checkbox(
                  value: checkBoxValue,
                  onChanged: (value) {
                    setState(() {
                      checkBoxValue = checkBoxValue;
                    });
                  }),
              Text(
                'I agree with Terms & Conditions',
                style: TextStyle(fontSize: 17.0),
              ),
            ],
          ),
          ElevatedButton(
            child: Text('SIGN IN'),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => Signup()));
            },
          ),
        ]),
      ),
    ));
  }
}
