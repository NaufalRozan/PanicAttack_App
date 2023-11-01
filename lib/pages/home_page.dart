import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/pages/anxiety_test_page.dart';
import 'package:panicattack_app/pages/edit_profile_page.dart';
import 'package:panicattack_app/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final user = FirebaseAuth.instance.currentUser!;
  String _registeredUserName = ''; // Menyimpan nama pengguna dari Firestore
  String _registeredEmail = ''; // Menyimpan email dari Firestore
  // String _registeredPhone = ''; // Menyimpan phone dari Firestore

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
        // _registeredPhone = userDoc.docs[0].data()['phone'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // Drawer
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: primaryButtonColor,
              child: DrawerHeader(
                padding:
                    EdgeInsets.all(0), // Menghapus margin dan padding default
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Menambahkan ini agar konten tepat berada di tengah
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(221, 219, 216, 216),
                        radius: 30,
                        backgroundImage:
                            AssetImage('lib/assets/images/Oh no-amico (1).png'),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "$_registeredUserName",
                      style: whiteTextStyle.copyWith(fontSize: 25),
                    ),
                    Text(
                      "$_registeredEmail",
                      style: whiteTextStyle.copyWith(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.person_outlined,
                      color: primaryButtonColor,
                      size: 28,
                    ),
                    title: Text(
                      'Profile',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: bold),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProfilePage();
                          },
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.edit,
                      color: primaryButtonColor,
                      size: 28,
                    ),
                    title: Text(
                      'Edit Profile',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: bold),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return EditProfilePage();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: primaryButtonColor,
                size: 28,
              ),
              title: Text(
                'Logout',
                style:
                    secondaryTextStyle.copyWith(fontSize: 18, fontWeight: bold),
              ),
              onTap: () {
                FirebaseAuth.instance.signOut();
              },
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0, top: 30.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Untuk meletakkan ikon hamburger di sebelah kiri dan teks & lingkaran di sebelah kanan
                children: [
                  Stack(
                    children: [
                      IconButton(
                        onPressed: () =>
                            _scaffoldKey.currentState?.openDrawer(),
                        icon: Icon(
                          Icons.menu,
                          color: primaryButtonColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "$_registeredUserName ",
                        style: secondaryTextStyle.copyWith(
                          fontSize: 22.5,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(221, 219, 216, 216),
                        radius: 22,
                        backgroundImage: AssetImage(
                            'lib/assets/images/Oh no-amico (1).png'), // Ganti warna latar belakang lingkaran sesuai kebutuhan
                        // Lainnya seperti backgroundImage, radius, dsb.
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hello $_registeredUserName,",
                    style: secondaryTextStyle.copyWith(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome back!",
                    style: textStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            //card 1
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Container(
                    width: double.infinity,
                    height: _calculateCardHeight(context),
                    color: cardRed,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: FittedBox(
                                child: Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: CircleAvatar(
                                    backgroundColor:
                                        whiteColor.withOpacity(0.6),
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/Ellipse 3.png'),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Anxiety Level Low",
                              style: whiteTextStyle.copyWith(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.07,
                                  fontWeight: bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20.0),
                //card2
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AnxietyTestPage();
                            },
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Container(
                          height: _calculateCardHeight(context),
                          color: primaryButtonColor,
                          child: FittedBox(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: whiteColor.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'lib/assets/images/Checklist-bro (1).png', // Ganti dengan path gambar Anda
                                          width:
                                              100, // Sesuaikan ukuran gambar sesuai kebutuhan
                                          height: 100,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "Test Tingkat\nGejala Kamu",
                                      style: whiteTextStyle.copyWith(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.038,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign
                                          .center, // Menyelaraskan teks ke tengah
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 20.0),
                    //card3
                    GestureDetector(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Container(
                          height: _calculateCardHeight(context),
                          color: primaryButtonColor,
                          child: FittedBox(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: whiteColor.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'lib/assets/images/Checklist-pana.png', // Ganti dengan path gambar Anda
                                          width:
                                              100, // Sesuaikan ukuran gambar sesuai kebutuhan
                                          height: 100,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "Lakukan\nKebiasaan ini",
                                      style: whiteTextStyle.copyWith(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.038,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  double _calculateCardHeight(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double availableHeight = screenHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom -
        280;
    return availableHeight / 2;
  }
}
