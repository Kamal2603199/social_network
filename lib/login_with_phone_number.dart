import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_network/verify_code.dart';

class LoginWithPhoneNumber extends StatefulWidget {
  const LoginWithPhoneNumber({super.key});

  @override
  State<LoginWithPhoneNumber> createState() => _LoginWithPhoneNumberState();
}

class _LoginWithPhoneNumberState extends State<LoginWithPhoneNumber> {
  bool loading = false;
  final phoneNumberController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            TextFormField(
              controller: phoneNumberController,
              decoration: InputDecoration(hintText: '+1 234 3455 234'),
            ),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(
              child: Text('LOGIN'),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => VerifyCodeScreen(
                          verificationId: ' ',
                        )));
                auth.verifyPhoneNumber(
                    phoneNumber: phoneNumberController.text,
                    verificationCompleted: (_) {
                      setState(() {
                        loading = false;
                      });
                    },
                    verificationFailed: (e) {},
                    codeSent: (String verificationId, int? token) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => VerifyCodeScreen(
                                    verificationId: verificationId,
                                  ))));
                    },
                    codeAutoRetrievalTimeout: (e) {
                      setState(() {
                        loading = false;
                      });
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
