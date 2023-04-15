import 'package:flutter/material.dart';
import 'package:social_network/contact_details.dart';

class CallLog extends StatefulWidget {
  const CallLog({super.key});

  @override
  State<CallLog> createState() => _CallLogState();
}

class _CallLogState extends State<CallLog> {
  var details = ContactDetails.details;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Caller Details'),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.call),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 90,
            child: ListView.builder(
              primary: false,
              scrollDirection: Axis.horizontal,
              itemCount: details.length,
              itemBuilder: (context, i) {
                return SizedBox(
                    height: 80,
                    width: 90,
                    child: Column(
                      children: [
                        Text(details[i].name!,
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                      ],
                    ));
              },
            ),
          ),
          Divider(
            color: Colors.teal,
            thickness: 2,
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
              primary: false,
              scrollDirection: Axis.vertical,
              itemCount: details.length,
              itemBuilder: (context, i) {
                return SizedBox(
                    height: 80,
                    child: Row(children: [
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(details[i].number!.toString(),
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 20))
                          ],
                        ),
                      ),
                    ]));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
