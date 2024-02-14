import 'package:bloc/bloc.dart';
import 'package:idute_app/models/user.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBlocBloc extends Bloc<SearchBlocEvent, SearchBlocState> {
  SearchBlocBloc() : super(SearchBlocInitial()) {
    on<SearchBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
