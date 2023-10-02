import 'package:bloc_example/common/constant/app_color.dart';
import 'package:bloc_example/modules/home/blocs/entry_bloc.dart';
import 'package:bloc_example/modules/home/blocs/entry_events.dart';
import 'package:bloc_example/modules/home/blocs/entry_state.dart';
import 'package:bloc_example/modules/home/screen/home_screen.dart';
import 'package:bloc_example/modules/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EntryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<EntryBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("this is appbar"),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(),
          SettingsScreen(),
        ],
      ),
      bottomNavigationBar: BlocBuilder<EntryBloc, EntryState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.currentIndex ?? 0,
            onTap: (index) {
              bloc.add(ChangeTabEvent(index));
            },
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            selectedItemColor: AppColor.primary,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: IconThemeData(color: AppColor.primary),
          );
        },
      ),
    );
  }
}
