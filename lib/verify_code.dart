import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_network/home.dart';

class VerifyCodeScreen extends StatefulWidget {
  final String verificationId;
  const VerifyCodeScreen({Key? key, required this.verificationId});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  bool loading = false;

  final verificationCodeController = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            TextFormField(
              controller: verificationCodeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: '6 digit code'),
            ),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(
              child: Text('Verify'),
              onPressed: () async {
                setState(() {
                  loading = true;
                });
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Profile()));

                final Credential = PhoneAuthProvider.credential(
                    verificationId: widget.verificationId,
                    smsCode: verificationCodeController.text.toString());
                try {
                  await auth.signInWithCredential(Credential);
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Profile())));
                } catch (e) {
                  setState(() {
                    loading = false;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
