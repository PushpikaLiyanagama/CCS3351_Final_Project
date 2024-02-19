import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  final double before;
  final double after;
  final int age;

  InformationScreen(
      {required this.before, required this.after, required this.age});

  @override
  Widget build(BuildContext context) {
    String category = '';

    if (age < 18) {
      if (before >= 70 && before <= 90 && after >= 90 && after <= 130) {
        category = 'Normal Stage';
      } else if (before >= 90 &&
          before <= 130 &&
          after >= 130 &&
          after <= 150) {
        category = 'Type 1 Diabetic Stage';
      } else {
        category = 'Unknown';
      }
    } else if (age >= 18 && age < 65) {
      if (before >= 70 && before <= 100 && after >= 100 && after <= 140) {
        category = 'Normal Stage';
      } else if (before >= 100 &&
          before <= 125 &&
          after >= 140 &&
          after <= 199) {
        category = 'Type 1 Diabetic Stage';
      } else if (before >= 126 && before <= 200 && after >= 200) {
        category = 'Type 2 Diabetic Stage';
      } else {
        category = 'Unknown';
      }
    } else {
      if (before >= 70 && before <= 100 && after >= 100 && after <= 140) {
        category = 'Normal Stage';
      } else if (before >= 80 && before <= 180 && after >= 200) {
        category = 'Diabetic in Senior Stage';
      } else {
        category = 'Unknown';
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Blood Sugar Level Category',
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
        )),
        backgroundColor: const Color.fromARGB(255, 33, 197, 226),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your blood sugar level category is:',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Text(
              category,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: category == 'Normal Stage'
                    ? Colors.green
                    : category.contains('Diabetic')
                        ? Colors.red
                        : Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Image.asset(
              "assets/table.png",
              height: 200,
              width: double.infinity,
            ),
            const Text("This is a chart for identify blood sugar stage"),
          ],
        ),
      ),
    );
  }
}
