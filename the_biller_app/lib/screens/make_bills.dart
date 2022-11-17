import 'package:flutter/material.dart';

class MakeBills extends StatefulWidget {
  const MakeBills({super.key});

  @override
  State<MakeBills> createState() => _MakeBillsState();
}

class _MakeBillsState extends State<MakeBills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Make Bills"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ));
  }
}
