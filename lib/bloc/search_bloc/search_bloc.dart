import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idute_app/models/user.dart';
import 'package:idute_app/models/user_list.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchBlocEvent, SearchBlocState> {
  SearchBloc() : super(SearchBlocInitial()) {
    on<SearchRequested>((event, emit) {
      List<User> searchedUsers = [];
      for (var user in users) {
        if (user.username.contains(event.query)) {
          searchedUsers.add(user);
        }
      }
      emit(LoadedSearch(users: searchedUsers));
    });
  }
}
