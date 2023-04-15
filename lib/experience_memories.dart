import 'package:flutter/material.dart';

class ExperienceMemories extends StatefulWidget {
  const ExperienceMemories({Key? key}) : super(key: key);

  @override
  State<ExperienceMemories> createState() => _ExperienceMemoriesState();
}

class _ExperienceMemoriesState extends State<ExperienceMemories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experience Memories'),
      ),
      body: Column(children: [
        TextField(
          decoration: InputDecoration(
              icon: new Icon(Icons.search),
              border: OutlineInputBorder(),
              labelText: 'Search'),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: 15,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 6.0,
                mainAxisExtent: 150),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.teal.shade50,
                height: 60,
                width: MediaQuery.of(context).size.width / 2.5,
                child: Column(
                  children: [
                    CircleAvatar(
                      child: Image.asset('assets/images/Profile.jpg', scale: 5),
                      backgroundColor: Colors.red,
                      maxRadius: 55,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
