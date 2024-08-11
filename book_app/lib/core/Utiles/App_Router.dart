import 'package:book_app/Features/Home/data/presentation/views/book_detailes_view.dart';
import 'package:book_app/Features/Home/data/presentation/views/home_view.dart';
import 'package:book_app/Features/Splash/presentation/views/Splash_View.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const KBookDetailesView = '/bookDetailesView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView, //باث مسار يلي بدي روح علي
      builder: (context, state) =>
          const HomeView(), //راوت بمثل لفيو  رئسيةبتطبيق
    ),
    GoRoute(path: KBookDetailesView,
    builder: (context, state) =>  const BookDetailesView(),),
  ]);
}
