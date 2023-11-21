import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({
    Key? key,
    required this.showLoginPage,
  }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //Text Controller
  final _emailContoller = TextEditingController();
  final _passwordController = TextEditingController();
  final _userNameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _emailContoller.dispose();
    _passwordController.dispose();
    _userNameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  // auth
  void signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailContoller.text.trim(),
        password: _passwordController.text.trim(),
      );
    } on FirebaseAuthException {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('Silakan isi dengan benar'),
          );
        },
      );
    }

    addUserDetails(
      _userNameController.text.trim(),
      _phoneController.text.trim(),
      _emailContoller.text.trim(),
    );
  }

  Future addUserDetails(String userName, String phone, String email) async {
    final currentUser = FirebaseAuth.instance.currentUser;
    final userDoc =
        FirebaseFirestore.instance.collection('users').doc(currentUser!.uid);

    await userDoc.set({
      'username': userName,
      'phone': phone,
      'email': email,
      'anxietyScore': 0, // Inisialisasi skor kecemasan ke 0
      'anxietyLevel': 'Unknown', // Inisialisasi tingkat kecemasan
    });
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
                MainAxisAlignment.end, // Pusatkan konten vertikal
            crossAxisAlignment:
                CrossAxisAlignment.stretch, // Memastikan konten penuh lebar
            children: [
              //Icon
              Image.asset(
                'lib/assets/images/Mobile login-amico (1).png',
                height: MediaQuery.of(context).size.height * 0.35,
              ),

              //Header
              Text(
                "Sign Up",
                style: textStyle.copyWith(
                    fontSize: 35, fontWeight: FontWeight.bold),
              ),

              Text(
                "Buat akun baru",
                style: secondaryTextStyle.copyWith(fontSize: 20),
              ),
              SizedBox(height: 20.0),

              // Username
              TextFormField(
                controller: _userNameController,
                decoration: InputDecoration(
                  labelText: "Nama Pengguna", // Label untuk input
                  labelStyle: textStyle.copyWith(fontSize: 20),
                  hintText: "Masukkan nama pengguna Anda",
                  hintStyle: greyTextStyle.copyWith(fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              // Birth
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: "Nomor Telepon", // Label untuk input
                  labelStyle: textStyle.copyWith(fontSize: 20),
                  hintText: "Masukkan nomor telepon Anda",
                  hintStyle: greyTextStyle.copyWith(fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0),

              //Email
              TextFormField(
                controller: _emailContoller,
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

              // Tambahkan jarak vertikal sebelum input password
              TextFormField(
                controller: _passwordController,
                obscureText: true, // Untuk menyembunyikan teks password
                decoration: InputDecoration(
                  labelText: "Kata Sandi",
                  labelStyle: textStyle.copyWith(fontSize: 20),
                  hintText: "Masukkan kata sandi Anda",
                  hintStyle: greyTextStyle.copyWith(fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),

              SizedBox(height: 30.0),

              GestureDetector(
                onTap: signUp,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: primaryButtonColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Text(
                      'Buat Akun',
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
                    "Sudah punya akun? ",
                    style: textStyle.copyWith(fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: widget.showLoginPage,
                    child: Text(
                      "Masuk",
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
