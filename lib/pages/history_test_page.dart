import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/pages/home_page.dart';

class HistoryTestPage extends StatefulWidget {
  const HistoryTestPage({Key? key}) : super(key: key);

  @override
  _HistoryTestPageState createState() => _HistoryTestPageState();
}

class CompletedContent {
  final String id;
  final String title;
  final DateTime timestamp;

  CompletedContent({
    required this.id,
    required this.title,
    required this.timestamp,
  });
}

class _HistoryTestPageState extends State<HistoryTestPage> {
  late List<CompletedContent> _completedContents;

  @override
  void initState() {
    super.initState();
    _completedContents = []; // Initialize as an empty list
    _loadCompletedContents();
  }

  Future<void> _loadCompletedContents() async {
    final currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      final userDoc =
          FirebaseFirestore.instance.collection('users').doc(currentUser.uid);

      final QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await userDoc.collection('completedContents').get();

      final List<CompletedContent> completedContents = querySnapshot.docs
          .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) {
        return CompletedContent(
          id: doc.id,
          title: doc['title'] ?? '',
          timestamp:
              (doc['timestamp'] as Timestamp?)?.toDate() ?? DateTime.now(),
        );
      }).toList();

      setState(() {
        _completedContents = completedContents;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'History Test',
            style: textStyle.copyWith(fontSize: 40, fontWeight: bold),
          ),
          Row(
            children: [
              Text(
                'Id Konten ',
                style: textStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
              Text(
                'Judul Konten ',
                style: textStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
              Text(
                'TimeStamp',
                style: textStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _completedContents.length,
              itemBuilder: (context, index) {
                final completedContent = _completedContents[index];
                return ListTile(
                  title: Text(completedContent.id),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(completedContent.title),
                      Text(
                        completedContent.timestamp.toString(),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage()),
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
    );
  }
}
