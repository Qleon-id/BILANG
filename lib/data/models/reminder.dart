enum ReminderStatus { active, triggered, completed, snoozed, dismissed }

class Reminder {
  const Reminder({
    required this.id,
    required this.title,
    required this.scheduledAt,
    this.status = ReminderStatus.active,
  });

  final String id;
  final String title;
  final DateTime scheduledAt;
  final ReminderStatus status;
}
