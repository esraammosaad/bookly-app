import 'package:bookly_app/Features/home/presentation/views/book_detailes_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class  AppRoutes{
  static String homeView='/HomeView';
  static String bookDetailsView='/BookDetailsView';


static final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, GoRouterState state) {
        return const SplashView();
      },

    ),
    GoRoute(
      path: homeView,
      builder: ( context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: bookDetailsView,
      builder: ( context, GoRouterState state) {
        return const BookDetailsView();
      },
    ),
  ],
);
}