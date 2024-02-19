import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:final_project/information_screen.dart';
import 'package:final_project/chart_screen.dart';

class inputScreen extends StatelessWidget {
  final TextEditingController beforeController = TextEditingController();
  final TextEditingController afterController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Blood Sugar Monitor',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
          backgroundColor: const Color.fromARGB(255, 33, 197, 226),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    "assets/logo.jpg",
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: ageController,
                    decoration: InputDecoration(
                      labelText: 'Enter Age',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: const BorderSide(color: Colors.grey)),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your age';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: beforeController,
                    decoration: InputDecoration(
                      labelText: 'Before Meal Glucose Level (mg/dL)',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: const BorderSide(color: Colors.grey)),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter before meal glucose level';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: afterController,
                    decoration: InputDecoration(
                      labelText: 'After Meal Glucose Level (mg/dL)',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: const BorderSide(color: Colors.grey)),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter after meal glucose level';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState != null &&
                          _formKey.currentState!.validate()) {
                        double before =
                            double.tryParse(beforeController.text) ?? 0.0;
                        double after =
                            double.tryParse(afterController.text) ?? 0.0;
                        int age = int.tryParse(ageController.text) ?? 0;
                        if (before > 0 && after > 0 && age > 0) {
                          Get.to(InformationScreen(
                              before: before, after: after, age: age));
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 33, 197, 226),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child:
                        const Text('Show Info', style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 33, 197, 226),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety_sharp, color: Colors.white),
              label: 'Info',
            ),
          ],
          currentIndex: 0,
          onTap: (index) {
            if (index == 1) {
              Get.to(() => const chartDetails());
            }
          },
        ),
      ),
    );
  }
}
