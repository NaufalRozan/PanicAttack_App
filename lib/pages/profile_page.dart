import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/pages/home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = FirebaseAuth.instance.currentUser!;

  final usersCollection = FirebaseFirestore.instance.collection("users");

  String _registeredUserName = ''; // Menyimpan nama pengguna dari Firestore
  String _registeredEmail = ''; // Menyimpan email dari Firestore
  String _registeredPhone = ''; // Menyimpan phone dari Firestore

  void initState() {
    super.initState();
    _getUserNameFromFirestore();
  }

  Future<void> _getUserNameFromFirestore() async {
    final currentUser = FirebaseAuth.instance.currentUser!;
    final userDoc = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: currentUser.email)
        .get();

    if (userDoc.docs.isNotEmpty) {
      setState(() {
        _registeredUserName = userDoc.docs[0].data()['username'];
        _registeredEmail = userDoc.docs[0].data()['email'];
        _registeredPhone = userDoc.docs[0].data()['phone'];
      });
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Error"),
          content: Text("Document not found for the current user."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  Future<void> editField(String field) async {
    String newValue = '';
    String fieldName = ''; // Menyimpan nama bidang dalam Firestore

    if (field == 'username') {
      fieldName = 'username';
    } else if (field == 'email') {
      fieldName = 'email';
    } else if (field == 'phone') {
      fieldName = 'phone';
    }

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[200],
        title: Text(
          "Edit $field",
          style: textStyle,
        ),
        content: TextField(
          autofocus: true,
          style: textStyle,
          decoration: InputDecoration(
            hintText: "Masukkan $field Baru",
            hintStyle: textStyle,
          ),
          onChanged: (value) {
            newValue = value;
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancel',
              style: textStyle,
            ),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context, newValue);
              // Letakkan kode berikut di sini
              await usersCollection
                  .where('email', isEqualTo: user.email)
                  .get()
                  .then((querySnapshot) {
                if (querySnapshot.docs.isNotEmpty) {
                  final docId = querySnapshot.docs[0].id;
                  usersCollection.doc(docId).update({fieldName: newValue});
                } else {
                  // Dokumen dengan email pengguna tidak ditemukan. Lakukan penanganan kesalahan di sini.
                }
              });
            },
            child: Text(
              'Save',
              style: textStyle,
            ),
          ),
        ],
      ),
    );

    if (newValue.trim().isNotEmpty) {
      await usersCollection
          .where('email', isEqualTo: user.email)
          .get()
          .then((querySnapshot) {
        if (querySnapshot.docs.isNotEmpty) {
          final docId = querySnapshot.docs[0].id;
          usersCollection.doc(docId).update({fieldName: newValue}).then((_) {
            // Setelah perubahan berhasil, perbarui tampilan dengan data yang baru.
            setState(() {
              if (fieldName == 'username') {
                _registeredUserName = newValue;
              } else if (fieldName == 'email') {
                _registeredEmail = newValue;
              } else if (fieldName == 'phone') {
                _registeredPhone = newValue;
              }
            });
          });
        } else {
          // Dokumen dengan email pengguna tidak ditemukan. Lakukan penanganan kesalahan di sini.
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'lib/assets/images/Frame 1.png',
              ), // Replace with your image path
              alignment: Alignment.topCenter,
              fit: BoxFit.contain),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Stack(
            children: [
              Positioned(
                top: 150,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                    color: primaryButtonColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 30,
                      left: 30,
                    ), // Atur padding sesuai keinginan Anda
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Rata kiri
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "$_registeredUserName",
                                style: whiteTextStyle.copyWith(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.064,
                                    fontWeight: bold),
                              ),
                              IconButton(
                                onPressed: () => editField('username'),
                                icon: Icon(Icons.edit),
                                color: whiteColor,
                              ),
                            ],
                          ),
                          Container(
                            height: 2, // Tinggi garis
                            width: double.infinity,
                            color: Colors
                                .white, // Warna garis sesuai keinginan Anda
                            margin: EdgeInsets.symmetric(
                                vertical:
                                    15), // Atur margin sesuai keinginan Anda
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.mail_outline,
                                color: whiteColor,
                                size: MediaQuery.of(context).size.width * 0.047,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Email :",
                                style: whiteTextStyle.copyWith(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.047,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                                height: 5,
                              ),
                          Text(
                            "$_registeredEmail",
                            style: whiteTextStyle.copyWith(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.047,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone_outlined,
                                    color: whiteColor,
                                    size: MediaQuery.of(context).size.width *
                                        0.047,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Nomor Telepon :",
                                    style: whiteTextStyle.copyWith(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.047,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () => editField('phone'),
                                icon: Icon(Icons.edit),
                                color: whiteColor,
                              ),
                            ],
                          ),
                          Text(
                            "$_registeredPhone",
                            style: whiteTextStyle.copyWith(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.047,
                            ),
                          ),
                        ],
                      ),
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
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: primaryButtonColor,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text(
                          'Kembali ke halaman utama',
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
