import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolios/data/firebase_service.dart';
import 'package:my_portfolios/repositories/comment_repo.dart';
import 'package:my_portfolios/repositories/projects_repo.dart';
import 'package:my_portfolios/repositories/user_repo.dart';
import 'package:my_portfolios/ui/customs/custom_widgets.dart';
import 'package:my_portfolios/ui/private_view/login_screen.dart';
import 'package:my_portfolios/ui/private_view/message_box_page_viewmodel.dart';
import 'package:my_portfolios/ui/private_view/user_preference_viewmodel.dart';
import 'package:my_portfolios/ui/public_view/home_screen_viewmodel.dart';

import 'package:my_portfolios/ui/public_view/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_portfolios/ui/not_found_screen.dart';
import 'package:my_portfolios/ui/public_view/projects_onhand_page_viewmodel.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  // Ensure Flutter bindings are initialized before using Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  var auth = FirebaseAuth.instance;
  var firebaseDB = FirebaseFirestore.instance;

  runApp(MultiProvider(
    providers: [
      Provider<FirebaseAuthentication>(
          create: (context) =>
              FirebaseAuthentication.namedPrivate(firebaseAuth: auth)),
      ProxyProvider<FirebaseAuthentication, UserRepository>(
          update: (_, auth, userRepo) =>
              UserRepositoryImpl.namedPrivate(auth: auth)),
      ChangeNotifierProxyProvider(
        create: (context) => UserPreferenceViewmodel(
            userRepository:
                Provider.of<UserRepository>(context, listen: false)),
        update: (_, userRepo, loginViewModel) => loginViewModel!,
      ),
      ChangeNotifierProvider(create: (context) => HomeScreenViewmodel()),
      Provider<FirestoreService>(
          create: (context) =>
              FirestoreService.namedPrivate(firestoreDB: firebaseDB)),
      ProxyProvider<FirestoreService, CommentRepository>(
          update: (_, service, commentRepo) =>
              CommentRepositoryImpl.namedPrivate(firestoreService: service)),
      ChangeNotifierProxyProvider(
          create: (context) => ContactMeDialogViewmodel(
              commentRepo:
                  Provider.of<CommentRepository>(context, listen: false)),
          update: (_, commentRepo, contactMeDialogViewmodel) =>
              contactMeDialogViewmodel!),
      ChangeNotifierProxyProvider(
          create: (context) => MessageBoxPageViewmodel.namedPrivate(
              commentRepo:
                  Provider.of<CommentRepository>(context, listen: false)),
          update: (_, commentRepo, messageBoxPageViewmodel) =>
              messageBoxPageViewmodel!),
      ProxyProvider<FirestoreService, ProjectsOnhandRepository>(
          update: (_, service, projectsRepo) =>
              ProjectsOnhandRepositoryImpl.namedPrivate(
                  firestoreService: service)),
      ChangeNotifierProxyProvider(
          create: (context) => ProjectsOnhandPageViewmodel.namedPrivate(
              projectsRepo: Provider.of<ProjectsOnhandRepository>(context,
                  listen: false)),
          update: (_, projectsRepo, projectsOnhandPageViewmodel) =>
              projectsOnhandPageViewmodel!)
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Color(0xFF0DC56C)),
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        LoginScreen.routeName: (context) => const LoginScreen()
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const NotFoundScreen());
      },
    );
  }
}
