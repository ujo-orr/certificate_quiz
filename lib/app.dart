import 'package:flutter/material.dart';

class CertificateQuizApp extends StatelessWidget {
  const CertificateQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF0F766E),
    );

    return MaterialApp(
      title: '자격증 문제은행',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: colorScheme,
        useMaterial3: true,
        fontFamily: 'NanumGothic',
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('자격증 문제은행')),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 560),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.menu_book_rounded,
                      size: 64,
                      color: colorScheme.primary,
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      '학습 화면 준비 중',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      '자격증 문제를 풀며 학습할 수 있는 공간을 준비하고 있습니다.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, height: 1.6),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
