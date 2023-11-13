import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/pages/anxiety_test_page.dart';
// import 'package:panicattack_app/pages/edit_profile_page.dart';
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
  String _anxietyLevel = ''; // Menyimpan level kecemasan dari Firestore

  void initState() {
    super.initState();
    _getUserNameAndAnxietyLevelFromFirestore();
  }

  Future<void> _getUserNameAndAnxietyLevelFromFirestore() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    final userDoc = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: currentUser?.email)
        .get();
    if (userDoc.docs.isNotEmpty) {
      setState(() {
        _registeredUserName = userDoc.docs[0].data()['username'];
        _registeredEmail = userDoc.docs[0].data()['email'];
        _anxietyLevel =
            userDoc.docs[0].data()['anxietyLevel']; // Ambil level kecemasan
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Color cardColor;
    Color textColors;
    String cardText;
    String imageCard;

    if (_anxietyLevel == 'Anxiety Level Low') {
      cardColor = primaryButtonColor; // Atur warna sesuai level low
      cardText = 'Tingkat Kecemasan Rendah';
      textColors = Color(0xffffffff);
      imageCard = 'lib/assets/images/Ellipse 3.png';
    } else if (_anxietyLevel == 'Anxiety Level Mid') {
      cardColor = cardYellow; // Atur warna sesuai level mid
      cardText = 'Tingkat Kecemasan Sedang';
      textColors = Color(0xff06442F);
      imageCard = 'lib/assets/images/Worried-amico.png';
    } else {
      cardColor = cardRed; // Atur warna sesuai level high
      cardText = 'Tingkat Kecemasan Tinggi';
      textColors = Color(0xffffffff);
      imageCard = 'lib/assets/images/Student stress-amico.png';
    }

    return Container(
      child: Scaffold(
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
                          backgroundImage: AssetImage(
                              'lib/assets/images/Oh no-amico (2).png'),
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
                        'Profil',
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
                  'Keluar',
                  style: secondaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: bold),
                ),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                },
              ),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'lib/assets/images/corner.png',
              ), // Replace with your image path
              alignment: Alignment.topRight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
                left: 20.0, right: 20.0, bottom: 30.0, top: 30.0),
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
                        "Halo $_registeredUserName,",
                        style: secondaryTextStyle.copyWith(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Selamat Datang Kembali!",
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
                        height: MediaQuery.of(context).size.height * 0.28,
                        color: cardColor,
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
                                        backgroundImage: AssetImage(imageCard),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  cardText,
                                  style: whiteTextStyle.copyWith(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.064,
                                      fontWeight: bold,
                                      color: textColors),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.42,
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
                                            borderRadius:
                                                BorderRadius.circular(12),
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
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
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

                        // SizedBox(width: 20.0),
                        //card3
                        GestureDetector(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.42,
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
                                            borderRadius:
                                                BorderRadius.circular(12),
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
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
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
        ),
      ),
    );
  }
}
