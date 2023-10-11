class SettingsState {
  int? level = 0;

  SettingsState({this.level = 0});

  SettingsState copyWith(int? level) {
    return SettingsState(level: level ?? this.level);
  }
}
