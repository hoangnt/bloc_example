import 'package:equatable/equatable.dart';

class EntryState extends Equatable {
  final int? currentIndex;

  EntryState({this.currentIndex});

  EntryState copyWith({int? index}) => EntryState(currentIndex: index);

  @override
  List<Object?> get props => [currentIndex];
}
