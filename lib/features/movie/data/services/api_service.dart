
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_app/core/base_constants.dart';
import 'package:the_movie_app/core/di/injectable.dart';


@module
abstract class APIService {

  @Singleton()
  Dio get dio => Dio(BaseOptions(
      contentType: "application/http",
      baseUrl: getIt.get<BaseConstants>().baseUrl));
}



addDioHeader() async {
  final dio = getIt.get<Dio>();
  dio.options.headers["Authorization"] = 'Bearer ${getIt.get<BaseConstants>().apiKey}';
  dio.options.headers["accept"] = 'application/json';
}

