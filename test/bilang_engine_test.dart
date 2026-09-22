import 'package:flutter_test/flutter_test.dart';
import 'package:bilang/features/nlu/engine/bilang_engine.dart';
import 'package:bilang/features/nlu/models/bilang_result.dart';

void main() {
  test('detects a reminder request', () {
    const engine = BilangEngine();
    final result = engine.processInput(
      'Besok jam 7 ingetin gue bawa charger',
    );

    expect(result.intent, BilangIntent.createReminder);
  });

  test('detects a memory query', () {
    const engine = BilangEngine();
    final result = engine.processInput('Nomor loker gue berapa?');

    expect(result.intent, BilangIntent.readMemory);
  });
}
