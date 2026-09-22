import '../../../data/models/user_settings.dart';

class SettingsRepository {
  UserSettings _settings = const UserSettings();

  UserSettings getSettings() => _settings;

  void updateCharacter(String characterId) {
    _settings = UserSettings(
      selectedCharacter: characterId,
      selectedTheme: _settings.selectedTheme,
      appThemeMode: _settings.appThemeMode,
      notificationsEnabled: _settings.notificationsEnabled,
      notificationPreview: _settings.notificationPreview,
      soundEnabled: _settings.soundEnabled,
      vibrationEnabled: _settings.vibrationEnabled,
      quietHoursEnabled: _settings.quietHoursEnabled,
      quietStart: _settings.quietStart,
      quietEnd: _settings.quietEnd,
      importantReminderDuringQuietHours:
          _settings.importantReminderDuringQuietHours,
      contextualMemoryEnabled: _settings.contextualMemoryEnabled,
      language: _settings.language,
      responseStyle: _settings.responseStyle,
      onboardingCompleted: _settings.onboardingCompleted,
    );
  }
}
