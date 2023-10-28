import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/pages/forgot_password_page.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginPage({Key? key, required this.showRegisterPage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Text Controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    } on FirebaseAuthException {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('Please enter your email and password correctly'),
          );
        },
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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
                MainAxisAlignment.spaceBetween, // Pusatkan konten vertikal
            crossAxisAlignment:
                CrossAxisAlignment.stretch, // Memastikan konten penuh lebar
            children: [
              //Icon
              Image.asset(
                'lib/assets/images/Sport family-pana.png',
                height: _calculateIconHeight(context),
              ),
              //Header
              Text(
                "Hello Again!",
                style: textStyle.copyWith(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "Welcome back, you've been missed",
                style: secondaryTextStyle.copyWith(fontSize: 20),
              ),
              SizedBox(height: 20.0),

              // Gunakan widget TextFormField untuk input teks
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email", // Label untuk input
                  labelStyle: textStyle.copyWith(fontSize: 20),
                  hintText: "Enter your email",
                  hintStyle: greyTextStyle.copyWith(fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0),

              // Tambahkan jarak vertikal sebelum input password
              TextFormField(
                controller: _passwordController,
                obscureText: true, // Untuk menyembunyikan teks password
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: textStyle.copyWith(fontSize: 20),
                  hintText: "Enter your password",
                  hintStyle: greyTextStyle.copyWith(fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),

              SizedBox(height: 15.0),
              //Reset Password
              Row(
                children: [
                  Text(
                    "Forgot Your Password? ",
                    style: textStyle.copyWith(fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ForgotPasswordPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Reset here",
                      style: tncTextStyle.copyWith(fontSize: 20),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.0),

              GestureDetector(
                onTap: signIn,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: primaryButtonColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10.0),

              //Tombol Register
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Pusatkan teks "Don't have an account?" dan "Register"
                children: [
                  Text(
                    "Don't have an account? ",
                    style: textStyle.copyWith(fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: widget.showRegisterPage,
                    child: Text(
                      "Register",
                      style: tncTextStyle.copyWith(fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),

              // Version
              Text(
                "Version: 1.0.0",
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
  double _calculateIconHeight(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double availableHeight = screenHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom -
        180;
    return availableHeight / 2;
  }
}
