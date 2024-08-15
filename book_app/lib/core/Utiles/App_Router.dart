import 'package:book_app/Features/Home/data/presentation/views/book_detailes_view.dart';
import 'package:book_app/Features/Home/data/presentation/views/home_view.dart';
import 'package:book_app/Features/Search/views/search_view.dart';
import 'package:book_app/Features/Splash/presentation/views/Splash_View.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailesView = '/bookDetailesView';
  static const kSearchView = '/searchView';
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
    GoRoute(
      path: kBookDetailesView,
      builder: (context, state) => const BookDetailesView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    )
  ]);
}
