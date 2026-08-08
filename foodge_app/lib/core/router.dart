
import 'package:foodge_app/core/routes.dart';
import 'package:foodge_app/features/home/presentation/pages/home_screen.dart';
import 'package:foodge_app/features/products/presentation/pages/product_details_screen.dart';
import '../features/splash/presentation/screens/splash_screen.dart'; 
import 'package:go_router/go_router.dart';



abstract class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.splash,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: Routes.products,
        builder: (context, state) => const  ProductDetailsScreen(),
      ),
    ],
  );
}