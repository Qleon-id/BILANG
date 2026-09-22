import '../models/bilang_result.dart';

class BilangEngine {
  const BilangEngine();

  BilangResult processInput(String input) {
    final text = input.trim().toLowerCase();

    if (text.isEmpty) {
      return const BilangResult(
        intent: BilangIntent.unknown,
        confidence: BilangConfidence.low,
        clarification: 'Coba bilang atau ketik apa yang ingin kamu titipkan.',
      );
    }

    if (text == 'batal' || text == 'cancel') {
      return const BilangResult(
        intent: BilangIntent.cancel,
        confidence: BilangConfidence.high,
      );
    }

    if (text.contains('berapa') && text.contains('nomor loker')) {
      return const BilangResult(
        intent: BilangIntent.readMemory,
        confidence: BilangConfidence.high,
        content: 'nomor loker',
      );
    }

    if (text.contains('ingetin') || text.contains('ingatkan')) {
      return BilangResult(
        intent: BilangIntent.createReminder,
        confidence: BilangConfidence.medium,
        content: input.trim(),
        clarification: text.contains('jam ') ? null : 'Kapan aku ingatkan?',
      );
    }

    return BilangResult(
      intent: BilangIntent.unknown,
      confidence: BilangConfidence.low,
      clarification: 'Aku belum yakin menangkap maksudmu. Coba bilang sekali lagi.',
    );
  }
}
