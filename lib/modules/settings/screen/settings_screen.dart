import 'package:bloc_example/modules/home/blocs/entry_bloc.dart';
import 'package:bloc_example/modules/home/blocs/entry_events.dart';
import 'package:bloc_example/modules/settings/bloc/settings_bloc.dart';
import 'package:bloc_example/modules/settings/bloc/settings_events.dart';
import 'package:bloc_example/modules/settings/bloc/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final settingBloc = BlocProvider.of<SettingsBloc>(context);
    final entryBloc = BlocProvider.of<EntryBloc>(context);

    return Scaffold(
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Text("LEVEL: ${state.level}"),
                Slider(
                  max: 5,
                  divisions: 5,
                  value: state.level!.toDouble(),
                  onChanged: (val) {
                    settingBloc.add(ChangeLevelEvent(level: val.toInt()));
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    entryBloc.add(GoHomeEvent());
                  },
                  child: Text("go home"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
