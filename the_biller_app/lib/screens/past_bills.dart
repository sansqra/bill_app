import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_biller_app/bloc/view_bills_bloc/view_bills_bloc.dart';
import 'dart:developer';

class PastBills extends StatefulWidget {
  const PastBills({super.key});

  @override
  State<PastBills> createState() => _PastBillsState();
}

class _PastBillsState extends State<PastBills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 187, 159),
          title: const Text("Past Bills"),
        ),
        body: BlocProvider<ViewBillsBloc>(
          create: (context) => ViewBillsBloc()..add(LoadBillsEvent()),
          child: BlocBuilder<ViewBillsBloc, ViewBillsState>(
            builder: (context, state) {
              if (state is LoadingBillsState) {
                return const Center(
                    child: CircularProgressIndicator(color: Colors.cyan));
              } else if (state is LoadedBillsState) {
                return ListView.builder(
                  itemCount: state.bills.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // IMPLEMENT A RE-ROUTE
                          log(state.bills[index].discount.toString());
                        },
                        child: Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ListTile(
                                leading: const Icon(Icons.circle_outlined),
                                title: Text(state.bills[index].customerName),
                                subtitle: Text(state.bills[index].billNumber),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: Card(
                      color: Colors.red,
                      child: Text(
                        "Could Not load data",
                        style: TextStyle(color: Colors.white),
                      )),
                );
              }
            },
          ),
        ));
  }
}
