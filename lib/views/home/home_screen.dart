import 'package:bloc_clean_coding/bloc/movies_bloc/movies_bloc.dart';
import 'package:bloc_clean_coding/config/components/loading_widget.dart';
import 'package:bloc_clean_coding/config/components/network_image_widget.dart';
import 'package:bloc_clean_coding/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/response/status.dart';
import '../../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late MoviesBloc _moviesBloc;

  @override
  void initState() {
    super.initState();
    _moviesBloc = MoviesBloc(moviesApiRepository: getIt());
  }

  @override
  void dispose() {
    _moviesBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
        automaticallyImplyLeading: true,
      ),
      body: BlocBuilder<MoviesBloc, MoviesState>(
        bloc: _moviesBloc..add(MoviesFetch()),
        buildWhen: (previous, current) =>
            previous.movieList != current.movieList,
        builder: (context, state) {
          switch (state.movieList.status) {
            case Status.loading:
              return const Center(
                child: LoadingWidget(),
              );
            case Status.error:
              return Center(
                child: Text(state.movieList.message.toString()),
              );

            case Status.success:
              if (state.movieList.data == null) {
                return Text('No Data Found');
              }

              final movies = state.movieList.data!;

              return ListView.builder(
                  itemCount: movies.tvShow.length,
                  itemBuilder: (context, index) {
                    final tvShow = movies.tvShow[index];
                    return ListTile(
                      leading: NetworkImageWidget(
                          imageUrl: tvShow.imageThumbnailPath),
                      title: Text(tvShow.name),
                      subtitle: Text(tvShow.network),
                      trailing: Text(tvShow.status),
                    );
                  });

            default:
              return 30.height;
          }
        },
      ),
    );
  }
}
