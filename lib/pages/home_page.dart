import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:panicattack_app/auth/main_page.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/pages/about_page.dart';
import 'package:panicattack_app/pages/anxiety_test_page.dart';
import 'package:panicattack_app/pages/goals_page.dart';
import 'package:panicattack_app/pages/history_test_page.dart';
import 'package:panicattack_app/pages/profile_page.dart';
import 'package:panicattack_app/utils/goal_util.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
  double _progress = 0.0;

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
        _anxietyLevel = userDoc.docs[0].data()['anxietyLevel'] ??
            ''; // Inisialisasi dengan nilai default
        _progress = (userDoc.docs[0].data()['progress'] ?? 0).toDouble();
      });
    }
  }

  Future<void> updateProgress({required String anxietyLevel}) async {
    try {
      print('anxietyLevel parameter: $anxietyLevel');
      final currentUser = FirebaseAuth.instance.currentUser;
      final userDoc =
          FirebaseFirestore.instance.collection('users').doc(currentUser!.uid);

      // Mendapatkan total konten yang harus diselesaikan oleh pengguna
      final totalContents = getDayContentTotal(anxietyLevel);

      print('Total Contents: $totalContents');

      // Mendapatkan total konten yang telah selesai oleh pengguna
      final completedContentsQuery = await userDoc
          .collection('completedContents')
          .where('completed', isEqualTo: true)
          .get();

      print('Completed Contents: ${completedContentsQuery.docs.length}');

      print('Dokumen yang Ditemukan: ${completedContentsQuery.docs.length}');

      for (var doc in completedContentsQuery.docs) {
        print('Dokumen: ${doc.data()}');
      }

      double progress;
      if (totalContents > 0) {
        progress = completedContentsQuery.size / totalContents.toDouble();
        print('Progress Terhitung: $progress');
      } else {
        progress = 0.0;
        print('Total Contents adalah 0, progress diatur menjadi 0.0');
      }

      // Mengatur nilai kemajuan
      await userDoc.update({'progress': progress});

      print(
          'Updating progress for anxiety level: $anxietyLevel, progress: $progress');
    } catch (e) {
      print('Error updating progress: $e');
    }
  }

  int getDayContentTotal(String anxietyLevel) {
    try {
      int total = 0;

      switch (anxietyLevel) {
        case 'Anxiety Level Low':
          total += getDay1Content(anxietyLevel).length;
          total += getDay2Content(anxietyLevel).length;
          total += getDay3Content(anxietyLevel).length;
          break;
        case 'Anxiety Level Mid':
          total += getDay1Content(anxietyLevel).length;
          total += getDay2Content(anxietyLevel).length;
          total += getDay3Content(anxietyLevel).length;
          total += getDay4Content(anxietyLevel).length;
          total += getDay5Content(anxietyLevel).length;
          break;
        case 'Anxiety Level High':
          total += getDay1Content(anxietyLevel).length;
          total += getDay2Content(anxietyLevel).length;
          total += getDay3Content(anxietyLevel).length;
          total += getDay4Content(anxietyLevel).length;
          total += getDay5Content(anxietyLevel).length;
          total += getDay6Content(anxietyLevel).length;
          total += getDay7Content(anxietyLevel).length;
          break;
        default:
          break;
      }

      print('Total Contents (anxietyLevel: $anxietyLevel): $total');
      return total;
    } catch (e) {
      print('Error in getDayContentTotal: $e');
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    Color cardColor;
    Color borderColor;
    Color textColors;
    Color textColors2;
    String cardText;
    String progressText;
    String imageCard;

    if (_anxietyLevel == 'Anxiety Level Low') {
      cardColor = primaryButtonColor;
      borderColor = greyColor;
      cardText = 'Tingkat Kecemasan Rendah';
      progressText = 'Ayo Tes Tingkat Kecemasan Kembali!';
      textColors = Color(0xffffffff);
      textColors2 = Color(0xffffffff);
      imageCard = 'lib/assets/images/Ellipse 3.png';
    } else if (_anxietyLevel == 'Anxiety Level Mid') {
      cardColor = cardYellow;
      borderColor = greyColor;
      cardText = 'Tingkat Kecemasan Sedang';
      progressText = 'Ayo Tes Tingkat Kecemasan Kembali!';
      textColors = Color(0xff117755F);
      textColors2 = Color(0xff117755F);
      imageCard = 'lib/assets/images/Worried-amico.png';
    } else if (_anxietyLevel == 'Anxiety Level High') {
      cardColor = cardRed;
      borderColor = greyColor;
      cardText = 'Tingkat Kecemasan Tinggi';
      progressText = 'Ayo Tes Tingkat Kecemasan Kembali!';
      textColors = Color(0xffffffff);
      textColors2 = Color(0xffffffff);
      imageCard = 'lib/assets/images/Student stress-amico.png';
    } else {
      cardColor = greyColor;
      borderColor = Color(0xff117755F);
      cardText = 'Lakukan "Tes Tingkat Kecemasan" terlebih dahulu';
      progressText = 'Lakukan "Tes Tingkat Kecemasan"';
      textColors = Color(0xff117755F);
      textColors2 = Color(0xff117755F);
      imageCard = 'lib/assets/images/Customer Survey-amico.png';
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
                height: MediaQuery.of(context).size.height * 0.3,
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
                          radius: MediaQuery.of(context).size.height * 0.05,
                          backgroundImage: AssetImage(
                              'lib/assets/images/Oh no-amico (2).png'),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "$_registeredUserName",
                        style: whiteTextStyle.copyWith(
                            fontSize: MediaQuery.of(context).size.width * 0.06),
                      ),
                      Text(
                        "$_registeredEmail",
                        style: whiteTextStyle.copyWith(
                            fontSize: MediaQuery.of(context).size.width * 0.04),
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
                    ListTile(
                      leading: Icon(
                        Icons.history,
                        color: primaryButtonColor,
                        size: 28,
                      ),
                      title: Text(
                        'Riwayat',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 18, fontWeight: bold),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HistoryTestPage();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Divider(), // Tambahkan Divider di antara ListTile
              ListTile(
                leading: Icon(
                  Icons.info_outline,
                  color: primaryButtonColor,
                  size: 28,
                ),
                title: Text(
                  'Tentang Kami',
                  style: secondaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: bold),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          AboutPage(), // Replace YourLoginPage with the actual login page widget
                    ),
                  );
                },
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
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          MainPage(), // Replace YourLoginPage with the actual login page widget
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'lib/assets/images/corner2.png',
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
                                backgroundColor:
                                    Color.fromARGB(221, 219, 216, 216),
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
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Halo ${_registeredUserName.split(' ')[0]},",
                            style: secondaryTextStyle.copyWith(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.044,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Selamat Datang Kembali!",
                            style: textStyle.copyWith(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.028,
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
                            height: MediaQuery.of(context).size.height * 0.38,
                            color: cardColor,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Progres Aktivitas",
                                      style: secondaryTextStyle.copyWith(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                        fontWeight: FontWeight.bold,
                                        color: textColors,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: borderColor,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color:
                                              borderColor, // Warna garis pinggir
                                          width: 5.0, // Lebar garis pinggir
                                        ),
                                      ),
                                      child: LinearPercentIndicator(
                                        animation: true,
                                        animationDuration: 1000,
                                        lineHeight:
                                            MediaQuery.of(context).size.height *
                                                0.025,
                                        percent: _progress,
                                        progressColor: cardColor,
                                        backgroundColor: greyColor,
                                        center: _progress ==
                                                1.0 // Periksa apakah progress sudah mencapai 100%
                                            ? Text(
                                                progressText,
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.019,
                                                    color: textColors),
                                              )
                                            : Text(
                                                "${(_progress * 100).toStringAsFixed(2)}%", // Menampilkan persentase dengan dua desimal
                                                style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.019,
                                                  color: textColors,
                                                ),
                                              ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Divider(thickness: 2),
                                    Expanded(
                                      child: FittedBox(
                                        child: Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: CircleAvatar(
                                            backgroundColor:
                                                whiteColor.withOpacity(0.6),
                                            backgroundImage:
                                                AssetImage(imageCard),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      cardText,
                                      style: whiteTextStyle.copyWith(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.062,
                                          fontWeight: bold,
                                          color: textColors2),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        //card2
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (_progress >= 1.0) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return AnxietyTestPage();
                                      },
                                    ),
                                  );
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Peringatan'),
                                        content: Text(
                                            'Anda harus menyelesaikan lebih banyak aktivitas untuk membuka uji tingkat gejala.'),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text('OK'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
                                  color: _progress >= 1.0
                                      ? primaryButtonColor
                                      : primaryButtonColor, // Ganti warna sesuai kebutuhan
                                  child: FittedBox(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    whiteColor.withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              child: Center(
                                                child: Image.asset(
                                                  'lib/assets/images/Checklist-bro (1).png',
                                                  width: 100,
                                                  height: 100,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                            Text(
                                              "Tes Tingkat\nKecemasan",
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
                            ),

                            // SizedBox(width: 20.0),
                            //card3
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return GoalsPage(
                                          anxietyLevel: _anxietyLevel);
                                    },
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
                                  color: primaryButtonColor,
                                  child: FittedBox(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    whiteColor.withOpacity(0.2),
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
                                              "Lakukan\nAktivitas ini",
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
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
