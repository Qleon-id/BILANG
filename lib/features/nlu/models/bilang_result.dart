enum BilangIntent {
  createReminder,
  updateReminder,
  completeReminder,
  rescheduleReminder,
  deleteReminder,
  createMemory,
  readMemory,
  updateMemory,
  deleteMemory,
  cancel,
  unknown,
}

enum BilangConfidence { high, medium, low }

class BilangResult {
  const BilangResult({
    required this.intent,
    required this.confidence,
    this.content,
    this.clarification,
  });

  final BilangIntent intent;
  final BilangConfidence confidence;
  final String? content;
  final String? clarification;
}
