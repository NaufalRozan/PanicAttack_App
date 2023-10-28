import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = FirebaseAuth.instance.currentUser!;
  String _registeredUserName = ''; // Menyimpan nama pengguna dari Firestore
  String _registeredEmail = ''; // Menyimpan email dari Firestore
  String _registeredPhone = ''; // Menyimpan phone dari Firestore

  void initState() {
    super.initState();
    _getUserNameFromFirestore();
  }

  Future<void> _getUserNameFromFirestore() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    final userDoc = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: currentUser?.email)
        .get();
    if (userDoc.docs.isNotEmpty) {
      setState(() {
        _registeredUserName = userDoc.docs[0].data()['username'];
        _registeredEmail = userDoc.docs[0].data()['email'];
        _registeredPhone = userDoc.docs[0].data()['phone'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Stack(
          children: [
            Positioned(
              top: 150,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  color: primaryButtonColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 70,
                      right: 30,
                      left: 30), // Atur padding sesuai keinginan Anda
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri
                    children: [
                      Text(
                        "$_registeredUserName",
                        style: whiteTextStyle.copyWith(
                            fontSize: 30, fontWeight: bold),
                      ),
                      Container(
                        height: 2, // Tinggi garis
                        width: double.infinity,
                        color:
                            Colors.white, // Warna garis sesuai keinginan Anda
                        margin: EdgeInsets.symmetric(
                            vertical: 15), // Atur margin sesuai keinginan Anda
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.mail_outline,
                            color: whiteColor,
                            size: 24.0,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Email",
                            style: whiteTextStyle.copyWith(fontSize: 19),
                          ),
                          SizedBox(width: 18,),
                          Text(
                            "$_registeredEmail",
                            style: whiteTextStyle.copyWith(fontSize: 19),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(
                            Icons.phone_outlined,
                            color: whiteColor,
                            size: 24.0,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Phone",
                            style: whiteTextStyle.copyWith(fontSize: 19),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "$_registeredPhone",
                            style: whiteTextStyle.copyWith(fontSize: 19),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 0,
              right: 200,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: primaryButtonColor,
                      width: 3,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(221, 217, 219, 216),
                    radius: MediaQuery.of(context).size.height * 0.06,
                    backgroundImage:
                        AssetImage('lib/assets/images/Oh no-amico (2).png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
