import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('Tautan pengaturan ulang kata sandi telah dikirim'),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0, top: 30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceAround, // Pusatkan konten vertikal
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Image.asset(
                'lib/assets/images/Emails-amico.png',
                height: MediaQuery.of(context).size.height * 0.35,
              ),

              //Header
              Text(
                "Verifikasi Email",
                style: textStyle.copyWith(
                    fontSize: 35, fontWeight: FontWeight.bold),
              ),

              Text(
                "Silakan masukkan email Anda yang valid untuk memvalidasi reset kata sandi",
                style: secondaryTextStyle.copyWith(fontSize: 20),
              ),

              SizedBox(height: 20.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email", // Label untuk input
                  labelStyle: textStyle.copyWith(fontSize: 20),
                  hintText: "Masukkan email Anda",
                  hintStyle: greyTextStyle.copyWith(fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),

              SizedBox(height: 20.0),

              GestureDetector(
                onTap: passwordReset,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: primaryButtonColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Text(
                      'Verifikasi',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10.0),

              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Pusatkan teks "Don't have an account?" dan "Register"
                children: [
                  Text(
                    "Ingat kata sandi Anda? ",
                    style: textStyle.copyWith(fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Masuk disini",
                      style: tncTextStyle.copyWith(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
