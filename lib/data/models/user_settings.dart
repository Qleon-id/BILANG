class UserSettings {
  const UserSettings({
    this.selectedCharacter = 'bear',
    this.selectedTheme = 'yellow',
    this.appThemeMode = 'system',
    this.notificationsEnabled = true,
    this.notificationPreview = true,
    this.soundEnabled = true,
    this.vibrationEnabled = true,
    this.quietHoursEnabled = true,
    this.quietStart = '22:00',
    this.quietEnd = '06:00',
    this.importantReminderDuringQuietHours = false,
    this.contextualMemoryEnabled = true,
    this.language = 'id',
    this.responseStyle = 'casual',
    this.onboardingCompleted = false,
  });

  final String selectedCharacter;
  final String selectedTheme;
  final String appThemeMode;
  final bool notificationsEnabled;
  final bool notificationPreview;
  final bool soundEnabled;
  final bool vibrationEnabled;
  final bool quietHoursEnabled;
  final String quietStart;
  final String quietEnd;
  final bool importantReminderDuringQuietHours;
  final bool contextualMemoryEnabled;
  final String language;
  final String responseStyle;
  final bool onboardingCompleted;
}
