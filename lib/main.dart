import 'package:commety_management_app/firebase_options.dart';
import 'package:commety_management_app/ui/screens/AddCommtyScreen.dart';
import 'package:commety_management_app/ui/screens/AddMemberScreen.dart';
import 'package:commety_management_app/ui/screens/DashboardScreen.dart';
import 'package:commety_management_app/ui/screens/LoginScreen.dart';
import 'package:commety_management_app/ui/screens/NoInternet.dart';
import 'package:commety_management_app/ui/screens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Commety App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
             colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: DashboardScreen(),
      initialRoute: '/login',
      routes: {
        '/login':(context)=>const LoginScreen(),
        '/dashboard':(context)=>const DashboardScreen(),
        '/splash' : (context)=>const SplashScreen(),
        '/addMember' : (context)=> AddMemberScreen(),
        '/addCommety' : (context)=>const AddCommetyScreen(),
        '/noInternet' : (context) => const NoInternetScreen()
      },
    );
  }
}
