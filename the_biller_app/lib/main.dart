import 'package:flutter/material.dart';
import 'package:the_biller_app/screens/main_screen.dart';

import 'package:firebase_core/firebase_core.dart';
// import 'package:kf_biller/services/firestore_crud.dart';
import 'firebase_options.dart';

import 'package:cloud_firestore_web/cloud_firestore_web.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'dart:developer';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await fetchAllBills();
  // runApp(const Biller());
}

Future<void> fetchAllBills() async {
  dynamic querySnapshot =
      await FirebaseFirestore.instance.collection('bills').get();
  dynamic dcs = querySnapshot.docs;
  log(dcs);
}

class Biller extends StatelessWidget {
  const Biller({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      home: MainScreen(),
    );
  }
}
