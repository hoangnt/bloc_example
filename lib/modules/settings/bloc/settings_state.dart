class SettingsState {
  int? level;

  SettingsState({this.level});

  SettingsState copyWith(int? level) {
    return SettingsState(level: level ?? this.level);
  }
}
