import 'package:flutter/material.dart';
import 'package:fluttercart_lab/screens/multi_selection.dart';
// قم باستيراد ملف صفحة الهدايا (تأكد من كتابة المسار الصحيح لملفك)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // تصحيح خطأ كتابة الـ . قبل fromSeed
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    
      ),
      // الحل هنا: استدعاء الصفحة الصحيحة مباشرة!
      home: const MultiSelection(), 
    );
  }
}