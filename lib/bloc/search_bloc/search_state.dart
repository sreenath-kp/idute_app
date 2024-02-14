part of 'search_bloc.dart';

@immutable
sealed class SearchBlocState {}

final class SearchBlocInitial extends SearchBlocState {}

final class SearchLoading extends SearchBlocState {}

final class LoadedSearch extends SearchBlocState {}
