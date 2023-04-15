import 'package:flutter/material.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({Key? key}) : super(key: key);

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help and Support'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 70, 10, 90),
        child: Container(
          height: 600,
          width: 400,
          decoration: BoxDecoration(color: Colors.tealAccent),
          child: Column(children: [
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                textAlign: TextAlign.center,
                'Contact Form',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Text(
              'Your email',
              style: TextStyle(fontSize: 15.0),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your email'),
              ),
            ),
            Text(
              'Question Type',
              style: TextStyle(fontSize: 15.0),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Write Your Thoughts'),
              ),
            ),
            ElevatedButton(
              child: Text('SEND'),
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
