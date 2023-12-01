import 'package:flutter/material.dart';
import 'package:instagramthayli/modules/profile/adapters/screens/edit.dart';
import 'package:instagramthayli/modules/profile/adapters/screens/profile.dart';

class ProfileStack extends StatelessWidget{
  const ProfileStack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //quita la etiquet roja de "DEBUG" de las vistas
      initialRoute: '/profile',
      routes: {
        '/profile':(context) => const Profile(),
        '/profile/edit':(context) => const Edit()
      },
    );
  }

}