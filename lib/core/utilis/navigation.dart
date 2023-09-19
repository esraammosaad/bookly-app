import 'package:bookly_app/Features/splash/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class  Navigation{
  static String homeView='HomeView';


static final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, GoRouterState state) {
        return const SplashView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: homeView,
          builder: ( context, GoRouterState state) {
            return const HomeView();
          },
        ),
      ],
    ),
  ],
);
}