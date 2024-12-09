import 'package:commety_management_app/ui/screens/AddMemberScreen.dart';
import 'package:commety_management_app/ui/screens/DashboardScreen.dart';
import 'package:commety_management_app/ui/screens/LoginScreen.dart';
import 'package:commety_management_app/ui/screens/SplashScreen.dart';
import 'package:commety_management_app/FirstScreen.dart';
import 'package:flutter/material.dart';

void main() {
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
      // home: SplashScreen(),
      initialRoute: '/addMember',
      routes: {
        '/login':(context)=>const LoginScreen(),
        '/dashboard':(context)=>const DashboardScreen(),
        '/splash' : (context)=>const SplashScreen(),
        '/addMember' : (context)=>const AddMemberScreen(),
      },
    );
  }
}
