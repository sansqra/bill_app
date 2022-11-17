import 'package:flutter/material.dart';

class CreateBill extends StatefulWidget {
  const CreateBill({super.key});

  @override
  State<CreateBill> createState() => _CreateBillState();
}

class _CreateBillState extends State<CreateBill> {
  void createBill(Map<String, dynamic> itemData) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bill View"),
          centerTitle: true,
        ),
        body: Column(children: [
          const SizedBox(
            height: 20.0,
          ),
          const Center(
            child: Text("So & So Company Header"),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Total: "), // ----- MAKE OBSERVABLE ------
              const SizedBox(
                width: 100.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Create bill"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              )
            ],
          ),
        ));
  }
}
