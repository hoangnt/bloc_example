import 'package:equatable/equatable.dart';

abstract class EntryEvents extends Equatable {
  @override
  List<Object?> get props => [];
}

class GoHomeEvent extends EntryEvents {}

class ChangeTabEvent extends EntryEvents {
  final int index;

  ChangeTabEvent(this.index);

  @override
  List<Object?> get props => [index];
}
