import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:panicattack_app/constans.dart';
import 'package:panicattack_app/pages/home_page.dart';
import 'package:intl/intl.dart';

class HistoryTestPage extends StatefulWidget {
  const HistoryTestPage({Key? key}) : super(key: key);

  @override
  _HistoryTestPageState createState() => _HistoryTestPageState();
}

class CompletedContent {
  final String title;
  final DateTime timestamp;
  final String duration;
  final String image;

  CompletedContent({
    required this.title,
    required this.timestamp,
    required this.duration,
    required this.image,
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
          title: doc['title'] ?? '',
          timestamp:
              (doc['timestamp'] as Timestamp?)?.toDate() ?? DateTime.now(),
          duration: doc['duration'] ?? '',
          image: doc['image'] ?? '',
        );
      }).toList();

      // Sort the list by timestamp in ascending order
      completedContents.sort((a, b) => a.timestamp.compareTo(b.timestamp));

      setState(() {
        _completedContents = completedContents;
      });
    }
  }

  List<List<CompletedContent>> getGroupedContents() {
    Map<String, List<CompletedContent>> groupedContents = {};

    for (var content in _completedContents) {
      String date = DateFormat('dd-MM-yyyy').format(content.timestamp);

      if (groupedContents.containsKey(date)) {
        groupedContents[date]!.add(content);
      } else {
        groupedContents[date] = [content];
      }
    }

    return groupedContents.values.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              'History',
              style: textStyle.copyWith(
                fontSize: MediaQuery.of(context).size.height * 0.04,
                fontWeight: bold,
              ),
            ),
          ),
          
          // ListView for Grouped Contents
          Expanded(
            child: ListView.builder(
              itemCount: getGroupedContents().length,
              itemBuilder: (context, groupIndex) {
                final group = getGroupedContents()[groupIndex];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Text(
                        DateFormat('dd-MM-yyyy').format(group[0].timestamp),
                        style: textStyle.copyWith(
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: group.map((completedContent) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 20),
                            height: MediaQuery.of(context).size.height * 0.18,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 1,
                                color: greyColor,
                              ),
                            ),
                            child: Row(
                              children: [
                              Image.asset(
                                  completedContent
                                      .image, // Ganti completedContent.ima dengan completedContent.image
                                  width: 120.0,
                                  height: 120.0,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      completedContent.title,
                                      style: textStyle.copyWith(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                        fontWeight: bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      completedContent.duration,
                                      style: greyTextStyle.copyWith(
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                        fontWeight: bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 30.0,
              top: 30.0,
            ),
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
        ],
      ),
    );
  }
}
