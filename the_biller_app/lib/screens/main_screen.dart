import 'package:flutter/material.dart';
import 'package:the_biller_app/screens/make_bills.dart';
import 'package:the_biller_app/screens/past_bills.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[700],
          centerTitle: true,
          title: const Text("Biller"),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                      height: 100.0,
                      width: 100.0,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigoAccent),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const PastBills()));
                          },
                          child: const Text('View Bills'))),
                  const SizedBox(
                    width: 80.0,
                  ),
                  SizedBox(
                      height: 100.0,
                      width: 100.0,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              alignment: Alignment.center,
                              backgroundColor: Colors.pinkAccent),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MakeBills()));
                          },
                          child: const Text('Make Bills'))),
                ],
              )
            ],
          ),
        ));
  }
}
