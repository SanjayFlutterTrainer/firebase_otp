import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  String? verificationId;
  OtpPage({super.key, this.verificationId});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

var otpController = TextEditingController();

class _OtpPageState extends State<OtpPage> {
  void signinWithOtp() async {
    var credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationId!, smsCode: otpController.text);
    try {
      await FirebaseAuth.instance.signInWithCredential(credential);
      print("login Successfull");
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Otp Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: TextField(
                  controller: otpController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    signinWithOtp();
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
