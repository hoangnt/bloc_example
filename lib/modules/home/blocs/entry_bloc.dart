import 'package:bloc_example/modules/home/blocs/entry_events.dart';
import 'package:bloc_example/modules/home/blocs/entry_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EntryBloc extends Bloc<EntryEvents, EntryState> {
  EntryBloc() : super(EntryState(currentIndex: 0)) {
    on<GoHomeEvent>(_goHome);
    on<ChangeTabEvent>(_changeTab);
  }

  final PageController pageController = PageController();

  void _goHome(GoHomeEvent event, Emitter<EntryState> emit) {
    emit(state.copyWith(index: 0));
  }

  void _changeTab(ChangeTabEvent event, Emitter<EntryState> emit) {
    pageController.jumpToPage(event.index);
    emit(state.copyWith(index: event.index));
  }
}

// kiểu viết với, bỏ qua event
// emit tích hợp sẵn
class EntryCubit extends Cubit<EntryState> {
  EntryCubit() : super(EntryState(currentIndex: 0));

  void goHome() {
    emit(state.copyWith(index: 0));
  }

  void changeTab(int newIndex) {
    emit(state.copyWith(index: newIndex));
  }
}
