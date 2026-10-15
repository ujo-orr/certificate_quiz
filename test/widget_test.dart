import 'package:certificate_quiz/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  for (final size in [const Size(360, 800), const Size(1280, 800)]) {
    testWidgets('시작 화면 표시 및 레이아웃 확인 (${size.width.toInt()}px)', (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = size;
      addTearDown(tester.view.resetDevicePixelRatio);
      addTearDown(tester.view.resetPhysicalSize);

      await tester.pumpWidget(const CertificateQuizApp());

      expect(find.text('자격증 문제은행'), findsOneWidget);
      expect(find.text('학습 화면 준비 중'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }
}
