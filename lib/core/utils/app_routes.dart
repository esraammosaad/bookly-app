import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/home/presentation/view_models/related_books_cubit/related_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/book_detailes_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static String homeView = '/HomeView';
  static String searchView = '/SearchView';
  static String bookDetailsView = '/BookDetailsView';


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
        builder: (context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: searchView,
        builder: (context, GoRouterState state) {
          return const SearchView();
        },
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, GoRouterState state) {
          return BlocProvider(
            create: (context) => RelatedBooksCubit(getIt.get<HomeRepoImpl>()),
            child: BookDetailsView(item: state.extra as BookModel),
          );
        },
      ),
    ],
  );
}