part of 'search_bloc.dart';

@immutable
sealed class SearchBlocEvent {}

final class SearchRequested extends SearchBlocEvent {
  final String query;

  SearchRequested({required this.query});
}
