import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:the_movie_app/core/di/injectable.dart';
import 'package:the_movie_app/core/theme/light.theme.dart';
import 'package:the_movie_app/core/utils/app_bloc_observer.dart';
import 'package:the_movie_app/features/movie/data/services/api_service.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_details/bloc/get_movie_details_bloc.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_list/blocs/favorite_movies_bloc/favorite_movies_bloc.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_list/blocs/movie_list_bloc/get_movie_list_bloc.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_list/blocs/watch_list_bloc/watchlist_bloc.dart';
import 'package:the_movie_app/features/splash/presentation/screen/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  Bloc.observer = AppBlocObserver();
  final dio = getIt.get<Dio>();
  dio.interceptors.add(
    AwesomeDioInterceptor(
      logRequestTimeout: false,
      logRequestHeaders: true,
      logResponseHeaders: true,
    ),
  );
  addDioHeader();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<GetMovieListBloc>(
        create: (context) => getIt.get<GetMovieListBloc>(),
      ),
      BlocProvider<FavoriteMoviesBloc>(
        create: (context) => getIt.get<FavoriteMoviesBloc>(),
      ),
      BlocProvider<WatchlistBloc>(
        create: (context) => getIt.get<WatchlistBloc>(),
      ),
      BlocProvider<GetMovieDetailsBloc>(
        create: (context) => getIt.get<GetMovieDetailsBloc>(),
      ),
    ],
    child: MyApp(),));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: lightTheme,
      home: SplashScreen(),
    );
  }
}

