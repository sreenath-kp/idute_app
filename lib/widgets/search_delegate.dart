import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idute_app/bloc/search_bloc/search_bloc.dart';
import 'package:idute_app/widgets/user_tile.dart';

class SearchUserDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    context.read<SearchBloc>().add(SearchRequested(query: query));
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocBuilder<SearchBloc, SearchBlocState>(
        builder: (context, state) {
          if (state is LoadedSearch) {
            return ListView.builder(
              itemCount: state.users.length,
              itemBuilder: (context, index) {
                return UserTile(
                  username: state.users[index].username,
                  field: state.users[index].field,
                  imageUrl: state.users[index].imageUrl,
                  position: state.users[index].position,
                  company: state.users[index].company,
                  rating: state.users[index].rating,
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    context.read<SearchBloc>().add(SearchRequested(query: query));
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocBuilder<SearchBloc, SearchBlocState>(
        builder: (context, state) {
          if (state is LoadedSearch) {
            return ListView.builder(
              itemCount: state.users.length,
              itemBuilder: (context, index) {
                return UserTile(
                  username: state.users[index].username,
                  field: state.users[index].field,
                  imageUrl: state.users[index].imageUrl,
                  position: state.users[index].position,
                  company: state.users[index].company,
                  rating: state.users[index].rating,
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
