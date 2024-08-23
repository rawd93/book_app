import 'package:book_app/Features/Home/data/DataSource/Hom_remote_data_source.dart';
import 'package:book_app/Features/Home/data/DataSource/Home_Local_data_source.dart';
import 'package:book_app/Features/Home/data/repos/home_repo_mpl.dart';
import 'package:book_app/core/Utiles/Api_Servicies.dart';
import 'package:book_app/main.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance; //اوبجيكت من get it
void setupServiceLoactor() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      //انشات نسخة واحدة ورح عيد استخدامها
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    //سجلت او انشات نسخة او سيرفس مشان ارجع اكسسها وقت مابدي
    HomeRepoImpl(
      homRemoteDataSource: HomeRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
      homeLocalDataSource: HomeLocalSourceImpl(),
    ),
  );
}
