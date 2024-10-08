import 'package:flutter/material.dart';
import 'package:homeapp/home_repository.dart';

class FPage extends StatelessWidget {
  const FPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: HomeRepository().fetchNumber(),
        builder: (context, snapshot) => Text("넘버 : ${snapshot.data}"),
      ),
    );
  }
}
