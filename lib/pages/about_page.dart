import 'package:flutter/material.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/pages/home_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'lib/assets/images/Group 16.png',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Tentang Kami',
                        style: textStyle.copyWith(
                            fontSize: MediaQuery.of(context).size.width * 0.07,
                            fontWeight: bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Versi Aplikasi: 1.0.0',
                    style: textStyle.copyWith(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Deskripsi:',
                    style: textStyle.copyWith(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                  Text(
                    'icalm adalah aplikasi untuk mengelola tingkat kecemasan dengan cara memberi arahan aktivitas berdasarkan hasil tes tingkat kecemasan user dengan harapan tingkat kecemasan user dapat menurun',
                    style: textStyle.copyWith(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Informasi Tambahan:',
                    style: textStyle.copyWith(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                  Text(
                    '“Tes Tingkat Kecemasan” dilakukan berdasarkan Hamilton Anxiety Rating Scale (HARS) ',
                    style: textStyle.copyWith(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Hubungi Kami:',
                    style: textStyle.copyWith(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                  Text(
                    'Email : icalm.umy1@gmail.com',
                    style: textStyle.copyWith(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
