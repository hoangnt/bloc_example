import 'package:bloc_example/modules/settings/bloc/settings_events.dart';
import 'package:bloc_example/modules/settings/bloc/settings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsBloc extends Bloc<SettingsEvents, SettingsState> {
  SettingsBloc() : super(SettingsState(level: 1)) {
    on(_changeLevel);
  }

  void _changeLevel(ChangeLevelEvent event, Emitter<SettingsState> emit) {
    emit(state.copyWith(event.level));
  }
}
