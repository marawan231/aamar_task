import 'package:aamar_task/core/helpers/local_database_helper.dart';
import 'package:aamar_task/core/network_service/dio_setup.dart';
import 'package:aamar_task/features/posts/data/datasources/client/post_remote_data_source.dart';
import 'package:aamar_task/features/posts/data/datasources/remote/posts_remote_data_source_implemtnatation.dart';
import 'package:aamar_task/features/posts/data/repositories/posts_repository_implementation.dart';
import 'package:aamar_task/features/posts/domain/repositories/posts_repository.dart';
import 'package:aamar_task/features/posts/domain/usecases/get_all_posts_usecase.dart';
import 'package:aamar_task/features/posts/presentation/bloc/cubit/posts_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = setupDio();
  //shared preferences
  getIt.registerLazySingleton<PostsManager>(() => PostsManager());

  getIt.registerLazySingleton<PostsWebService>(() => PostsWebService(dio));
  //posts data source
  getIt.registerLazySingleton<PostsRemoteDataSourceImplement>(
      () => PostsRemoteDataSourceImplement(getIt<PostsWebService>()));

  //posts data source

  //PostsRemoteDataSourceImplement
  // posts Repository
  getIt.registerLazySingleton<PostsRepository>(() =>
      PostRepositoryImplementation(getIt<PostsRemoteDataSourceImplement>()));
  //use case
  getIt.registerFactory<GetAllPostsUseCase>(
      () => GetAllPostsUseCase(getIt<PostsRepository>()));
  // posts cubit
  getIt.registerFactory<PostsCubit>(
      () => PostsCubit(getAllPostsUseCase: getIt<GetAllPostsUseCase>()));
}
