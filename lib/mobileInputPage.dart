import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_otp/otpinputpage.dart';
import 'package:flutter/material.dart';

class MobileInputPage extends StatefulWidget {
  const MobileInputPage({super.key});

  @override
  State<MobileInputPage> createState() => _MobileInputPageState();
}

var phoneController = TextEditingController();

class _MobileInputPageState extends State<MobileInputPage> {
  void verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneController.text,
      verificationCompleted: (phoneAuthCredential) {},
      verificationFailed: (error) {
        print(error);
      },
      codeSent: (verificationId, forceResendingToken) {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return OtpPage(
              verificationId: verificationId,
            );
          },
        ));
      },
      codeAutoRetrievalTimeout: (verificationId) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Enter Mobile No")),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: TextField(
                  controller: phoneController,
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
                    verifyPhone();
                  },
                  child: Text("get otp"))
            ],
          ),
        ),
      ),
    );
  }
}
