import 'package:flutter/material.dart';
import 'package:social_network/call_log.dart';
import 'package:social_network/contact_data.dart';
import 'package:social_network/contact_details.dart';

class TopContacts extends StatefulWidget {
  const TopContacts({Key? key}) : super(key: key);

  @override
  State<TopContacts> createState() => _TopContactsState();
}

class _TopContactsState extends State<TopContacts> {
  var data = ContactData.contacts;
  var details = ContactDetails.details;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Contacts',
            style: TextStyle(fontSize: 22, color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                labelText: 'Search'),
          ),
          const Text('Recomendations',
              style: TextStyle(fontSize: 22, color: Colors.black)),
          const Divider(
            color: Color.fromRGBO(0, 150, 136, 1),
            thickness: 1,
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
              primary: false,
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, i) {
                return SizedBox(
                    height: 100,
                    width: 100,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CallLog()),
                        );
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            maxRadius: 30,
                            child: Image.asset(data[i].image!, scale: 5),
                          ),
                          Text(data[i].name!,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20)),
                        ],
                      ),
                    ));
              },
            ),
          ),
          const Divider(
            color: Colors.teal,
            thickness: 1,
          ),
          const Text('My Contacts',
              style: TextStyle(fontSize: 23, color: Colors.black)),
          const Divider(
            color: Colors.teal,
            thickness: 1,
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
              primary: false,
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              itemBuilder: (context, i) {
                return Row(children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (BuildContext context) => const CallLog()),
                      );
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.red,
                          maxRadius: 30,
                          child: Image.asset(data[i].image!, scale: 5),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(data[i].name!,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20))
                      ],
                    ),
                  ),
                ]);
              },
            ),
          ),
        ]),
      ),
    );
  }
}
