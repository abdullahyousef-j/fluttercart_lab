import 'package:flutter/material.dart';

class MultiSelection extends StatefulWidget {
  const MultiSelection({super.key});

  @override
  State<MultiSelection> createState() => _MultiSelectionState();
}

class _MultiSelectionState extends State<MultiSelection> {
  final List<Map<String, String>> gift = [
    {"name": "deer", "image": "assets/animal/1.jpg"},
    {"name": "lio", "image": "assets/animal/2.jpg"},
    {"name": "cat", "image": "assets/animal/3.jpg"},
    {"name": "horse", "image": "assets/animal/4.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
     
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        // استخدام السحر هنا: إذا كانت المشكلة من الخارج، الـ Expanded سيجبر الواجهة على أخذ المساحة المتاحة بالكامل
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: gift.length,
                // ميزة shrinkWrap تجعل الشبكة تأخذ مساحة عناصرها فقط ولا تتوسع بشكل عشوائي
                shrinkWrap: true, 
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,       // عمودين
                  childAspectRatio: 0.75,  // حساب مرن ونسبى للطول والعرض
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              gift[index]["image"]!,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          gift[index]["name"]!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}