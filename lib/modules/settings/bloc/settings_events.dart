abstract class SettingsEvents {}

class ChangeLevelEvent extends SettingsEvents {
  final int? level;

  ChangeLevelEvent({this.level});
}
