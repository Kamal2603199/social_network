import 'package:flutter/material.dart';

class Subscribers extends StatefulWidget {
  const Subscribers({Key? key}) : super(key: key);

  @override
  State<Subscribers> createState() => _SubscribersState();
}

class _SubscribersState extends State<Subscribers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Subscribers'),
      ),
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 7.0,
            mainAxisExtent: 150),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.teal.shade50,
            height: 90,
            width: MediaQuery.of(context).size.width / 2.5,
            child: Column(
              children: [
                CircleAvatar(
                  child: Image.asset('assets/images/Profile.jpg', scale: 5),
                  backgroundColor: Colors.red,
                  maxRadius: 55,
                ),
                const Text(
                  'Name',
                  style: TextStyle(color: Colors.black, fontSize: 23),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
