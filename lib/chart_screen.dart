import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:final_project/input_screen.dart';

class chartDetails extends StatelessWidget {
  const chartDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Blood Sugar Level Informations",
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
        )),
        backgroundColor: const Color.fromARGB(255, 33, 197, 226),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "What is Diabetic ?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Diabetes is a chronic condition causing high"
                    "blood sugar levels due to insufficient insulin"
                    "production or ineffective use. Common types include"
                    "Normal, Prediabetic, and Type 2 Diabetic. Management"
                    "involves medication, dietary changes, exercise, and regular monitoring.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Understanding Diabetes and Maintaining Health",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Diabetes is a chronic condition that affects how your body regulates blood sugar. "
                    "There are different types of diabetes, with the most common being type 1 and type "
                    "2. In type 1 diabetes, the body doesn't produce insulin, while in type 2 diabetes, "
                    "the body either doesn't produce enough insulin or becomes resistant to its effects.",
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Managing Diabetes",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Managing diabetes involves maintaining healthy blood sugar levels through a combination "
                    "of medication, lifestyle changes, and dietary choices. Here are some tips to help you "
                    "manage diabetes and maintain overall health:",
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Tips for Managing Diabetes:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "1. Monitor Your Blood Sugar:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Regularly check your blood sugar levels using a glucose meter as advised by your healthcare "
                    "provider. Keeping track of your blood sugar levels can help you understand how your body "
                    "responds to different foods, activities, and medications.",
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "2. Follow a Healthy Diet:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Focus on eating a balanced diet that includes plenty of fruits, vegetables, whole grains, "
                    "lean proteins, and healthy fats. Limit your intake of processed foods, sugary beverages, "
                    "and foods high in saturated and trans fats",
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "3. Stay Active:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Engage in regular physical activity to help control blood sugar levels, improve insulin "
                    "sensitivity, and maintain a healthy weight. Aim for at least 150 minutes of moderate-intensity "
                    "exercise per week, such as brisk walking, swimming, or cycling.",
                    textAlign: TextAlign.justify,
                  ),
                  const Text(
                    "4. Manage Stress:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Chronic stress can contribute to unhealthy habits and affect blood sugar levels. Practice "
                    "stress-reduction techniques such as deep breathing, meditation, yoga, or spending time in "
                    "nature to help manage stress levels.",
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "5. Get Regular Check-Up:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Visit your healthcare provider regularly for check-ups and screenings to monitor your "
                    "diabetes and assess your risk for complications. Follow your provider's recommendations "
                    "for medication, insulin therapy, and lifestyle modifications.",
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Here are the Table for find stage of blood sugar level.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Image.asset(
                      "assets/table.png",
                      height: 200,
                      width: double.infinity,
                    ),
                  ),
                  const Center(child: Text("figure 1")),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 33, 197, 226),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 35,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.health_and_safety_sharp,
              color: Colors.white,
              size: 35,
            ),
            label: 'Info',
          ),
        ],
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Get.off(() => inputScreen());
          } else if (index == 1) {}
        },
      ),
    );
  }
}
