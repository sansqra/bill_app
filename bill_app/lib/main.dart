import 'package:flutter/material.dart';
import 'dart:developer' show log;
import 'screens/bill_view.dart' show BillView;
import 'screens/create_bill.dart' show CreateBill;

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Bill App"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BillView()));
                },
                child: const Text("bill view")),
            const SizedBox(height: 100.0),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateBill()));
                },
                child: const Text("Create Bill"))
          ]),
        ),
      ),
    );
  }
}
