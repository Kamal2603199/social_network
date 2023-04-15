import 'package:flutter/material.dart';
import 'package:social_network/bottom_navigation.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 80),
        child: Container(
          color: Colors.teal.shade50,
          height: 600,
          width: MediaQuery.of(context).size.height / 2,
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              CircleAvatar(
                child: Image.asset('assets/images/Man.png', scale: 5),
                maxRadius: 55,
              ),
              Text(
                'Name',
                style: TextStyle(color: Colors.black, fontSize: 23),
              ),
              SizedBox(
                  child: Text(
                'Today is 26/11, November 2022 Saturday. The journey of 1000 miles begins with a singe step.',
                style: TextStyle(color: Colors.black, fontSize: 18),
              )),
              Divider(
                color: Colors.purple,
              ),
              SizedBox(
                  width: 150,
                  child: Text(
                    'My Interests',
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  )),
              Row(children: [
                Chip(
                  shadowColor: Colors.black,
                  backgroundColor: Colors.lightBlue,
                  avatar: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    child: Text(
                      'D',
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                  ),
                  label: Text(
                    'David',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                ),
                Chip(
                  shadowColor: Colors.blue,
                  backgroundColor: Colors.lightBlue,
                  avatar: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    child: Text(
                      'D',
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                  ),
                  label: Text(
                    'Skill',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                ),
                Chip(
                  shadowColor: Colors.blue,
                  backgroundColor: Colors.lightBlue,
                  avatar: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    child: Text(
                      'P',
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                  ),
                  label: Text(
                    'Playing',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                ),
              ]),
              Row(children: [
                Chip(
                  shadowColor: Colors.blue,
                  backgroundColor: Colors.lightBlue,
                  avatar: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    child: Text(
                      'D',
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                  ),
                  label: Text(
                    'David',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                ),
                Chip(
                  shadowColor: Colors.blue,
                  backgroundColor: Colors.lightBlue,
                  avatar: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    child: Text(
                      'D',
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                  ),
                  label: Text(
                    'Skill',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                ),
                Chip(
                  shadowColor: Colors.blue,
                  backgroundColor: Colors.lightBlue,
                  avatar: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    child: Text(
                      'P',
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                  ),
                  label: Text(
                    'Playing',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                ),
              ]),
              Row(children: [
                Chip(
                  shadowColor: Colors.blue,
                  backgroundColor: Colors.lightBlue,
                  avatar: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    child: Text(
                      'D',
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                  ),
                  label: Text(
                    'David',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                ),
                Chip(
                  shadowColor: Colors.blue,
                  backgroundColor: Colors.lightBlue,
                  avatar: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    child: Text(
                      'D',
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                  ),
                  label: Text(
                    'Skill',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                ),
                Chip(
                  shadowColor: Colors.blue,
                  backgroundColor: Colors.lightBlue,
                  avatar: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    child: Text(
                      'P',
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                  ),
                  label: Text(
                    'Playing',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                ),
              ]),
              ElevatedButton(
                child: Text('SIGN IN'),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => BottomNavBar()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
