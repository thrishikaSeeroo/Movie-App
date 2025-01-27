// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/movie/data/data_sources/data_source.dart' as _i45;
import '../../features/movie/data/data_sources/remote_data_source.dart'
    as _i115;
import '../../features/movie/data/repository/movie_list_repository.dart'
    as _i454;
import '../../features/movie/data/services/api_service.dart' as _i385;
import '../../features/movie/domain/repositories/movie_repository.dart'
    as _i224;
import '../../features/movie/domain/usecases/add_favorite_usecase.dart'
    as _i889;
import '../../features/movie/domain/usecases/add_rating_usecase.dart' as _i613;
import '../../features/movie/domain/usecases/add_watchlist_usecase.dart'
    as _i844;
import '../../features/movie/domain/usecases/credits_details_usecase.dart'
    as _i767;
import '../../features/movie/domain/usecases/favorite_movies_usecase.dart'
    as _i907;
import '../../features/movie/domain/usecases/movie_details_usecase.dart'
    as _i539;
import '../../features/movie/domain/usecases/movie_list_usecase.dart' as _i208;
import '../../features/movie/domain/usecases/watchlist_movies_usecase.dart'
    as _i905;
import '../../features/movie/presentation/screens/movie_details/blocs/add_fav_bloc/add_fav_bloc.dart'
    as _i476;
import '../../features/movie/presentation/screens/movie_details/blocs/add_rating_bloc/add_rating_bloc.dart'
    as _i926;
import '../../features/movie/presentation/screens/movie_details/blocs/add_watchlist_bloc/add_watchlist_bloc.dart'
    as _i865;
import '../../features/movie/presentation/screens/movie_details/blocs/credit_details_bloc/credit_details_bloc.dart'
    as _i5;
import '../../features/movie/presentation/screens/movie_details/blocs/movie_details_bloc/get_movie_details_bloc.dart'
    as _i1066;
import '../../features/movie/presentation/screens/movie_list/blocs/favorite_movies_bloc/favorite_movies_bloc.dart'
    as _i1052;
import '../../features/movie/presentation/screens/movie_list/blocs/movie_list_bloc/get_movie_list_bloc.dart'
    as _i818;
import '../../features/movie/presentation/screens/movie_list/blocs/watch_list_bloc/watchlist_bloc.dart'
    as _i385;
import '../base_constants.dart' as _i543;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final aPIService = _$APIService();
    gh.factory<_i543.BaseConstants>(() => _i543.BaseConstants());
    gh.singleton<_i361.Dio>(() => aPIService.dio);
    gh.factory<_i45.DataSource>(() => _i115.RemoteDataSource(gh<_i361.Dio>()));
    gh.factory<_i224.MovieRepository>(
        () => _i454.MovieRepositoryImpl(gh<_i45.DataSource>()));
    gh.factory<_i613.AddMovieRatingUseCase>(
        () => _i613.AddMovieRatingUseCase(gh<_i224.MovieRepository>()));
    gh.factory<_i907.FavoriteMoviesUseCase>(
        () => _i907.FavoriteMoviesUseCase(gh<_i224.MovieRepository>()));
    gh.factory<_i926.AddRatingBloc>(
        () => _i926.AddRatingBloc(gh<_i613.AddMovieRatingUseCase>()));
    gh.factory<_i889.AddFavoriteUseCase>(
        () => _i889.AddFavoriteUseCase(gh<_i224.MovieRepository>()));
    gh.factory<_i905.WatchListMoviesUseCase>(
        () => _i905.WatchListMoviesUseCase(gh<_i224.MovieRepository>()));
    gh.factory<_i476.AddFavBloc>(
        () => _i476.AddFavBloc(gh<_i889.AddFavoriteUseCase>()));
    gh.factory<_i1052.FavoriteMoviesBloc>(
        () => _i1052.FavoriteMoviesBloc(gh<_i907.FavoriteMoviesUseCase>()));
    gh.factory<_i844.AddWatchListUseCase>(
        () => _i844.AddWatchListUseCase(gh<_i224.MovieRepository>()));
    gh.factory<_i385.WatchlistBloc>(
        () => _i385.WatchlistBloc(gh<_i905.WatchListMoviesUseCase>()));
    gh.factory<_i539.MovieDetailsUseCase>(
        () => _i539.MovieDetailsUseCase(gh<_i224.MovieRepository>()));
    gh.factory<_i767.CreditsDetailsUseCase>(
        () => _i767.CreditsDetailsUseCase(gh<_i224.MovieRepository>()));
    gh.factory<_i865.AddWatchlistBloc>(
        () => _i865.AddWatchlistBloc(gh<_i844.AddWatchListUseCase>()));
    gh.factory<_i208.MovieListUseCase>(
        () => _i208.MovieListUseCase(gh<_i224.MovieRepository>()));
    gh.factory<_i818.GetMovieListBloc>(
        () => _i818.GetMovieListBloc(gh<_i208.MovieListUseCase>()));
    gh.factory<_i5.CreditDetailsBloc>(
        () => _i5.CreditDetailsBloc(gh<_i767.CreditsDetailsUseCase>()));
    gh.factory<_i1066.GetMovieDetailsBloc>(
        () => _i1066.GetMovieDetailsBloc(gh<_i539.MovieDetailsUseCase>()));
    return this;
  }
}

class _$APIService extends _i385.APIService {}
