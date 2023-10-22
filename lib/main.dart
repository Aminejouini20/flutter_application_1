// lib/main.dart
import 'package:flutter/material.dart';
import 'package:Scaffoldapp/lib/data/loaddata.dart';
import 'package:Scaffoldapp/lib/domain/Affirmation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AffirmationList(),
  ));
}

class AffirmationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Affirmation> affirmations = loaddata();
    return Scaffold(
      appBar: AppBar(title: Text("Affirmations")),
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
                  style: TextStyle(fontSize: 40),
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
