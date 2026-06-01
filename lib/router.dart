import 'package:go_router/go_router.dart';
import 'package:note_app/features/add_note/presentation/add_note_screen.dart';
import 'package:note_app/features/auth/login/presentation/login_screen.dart';
import 'package:note_app/features/auth/register/presentation/register_screen.dart';
import 'package:note_app/features/home/presentation/home_screen.dart';
import 'package:note_app/helpers/navigation_service.dart';
import 'package:note_app/splash_screen.dart';

final GoRouter router = GoRouter(
  navigatorKey: NavigationService.navigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/add-note',
      builder: (context, state) => const AddNoteScreen(),
    ),
  ],
);
