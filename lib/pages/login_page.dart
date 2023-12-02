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

  // Fungsi validasi untuk format email
  bool isEmailValid(String email) {
    // Sesuaikan pola regex ini berdasarkan kebutuhan spesifik Anda
    RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(email);
  }

  Future signIn() async {
    try {
      // Periksa apakah format email valid
      if (!isEmailValid(_emailController.text.trim())) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(
                  'Format email tidak valid. Silakan masukkan email yang valid.'),
            );
          },
        );
        return;
      }

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } on FirebaseAuthException {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content:
                Text('Email atau kata sandi tidak benar. Silakan coba lagi.'),
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
                height: MediaQuery.of(context).size.height * 0.35,
              ),
              //Header
              Text(
                "Halo!",
                style: textStyle.copyWith(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "Selamat Datang di iCalm",
                style: secondaryTextStyle.copyWith(fontSize: 20),
              ),
              SizedBox(height: 20.0),

              // Gunakan widget TextFormField untuk input teks
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email", // Label untuk input
                  labelStyle: textStyle.copyWith(fontSize: 20),
                  hintText: "Masukkan Email Anda",
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
                  labelText: "Kata Sandi",
                  labelStyle: textStyle.copyWith(fontSize: 20),
                  hintText: "Masukkan Kata Sandi Anda",
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
                    "Lupa kata sandi Anda? ",
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
                      "Reset di sini",
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
                      'Masuk',
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
                    "Belum punya akun? ",
                    style: textStyle.copyWith(fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: widget.showRegisterPage,
                    child: Text(
                      "Daftar",
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
}
