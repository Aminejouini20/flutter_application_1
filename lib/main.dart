import 'package:flutter/material.dart';
import "package:flutter_application_1/domain/Affirmation.dart";
import "package:flutter_application_1/data/loaddata.dart";

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AffirmationList(),
  ));
}

class AffirmationList extends StatelessWidget {
  const AffirmationList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Affirmation> affirmations = loaddata();
    return Scaffold(
      appBar: AppBar(title: const Text("Affirmations")),
      body: ListView.builder(
        itemCount: affirmations.length,
        itemBuilder: (context, index) {
          final affirmation = affirmations[index];
          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(affirmation.image, height: 194, width: 600, fit: BoxFit.cover),
                Text(
                  affirmation.desc,
                  style: const TextStyle(fontSize: 40),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
