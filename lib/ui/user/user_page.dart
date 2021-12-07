import 'package:flutter/material.dart';
import 'package:devfest_2021/ultilize/user_preferences.dart';
import 'package:devfest_2021/data/models/user/user.dart';


class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  // final user = UserPreferences.myUser;
  @override
  Widget build(BuildContext context) {
    return Center(
        //
      child: Builder(
        builder: (context) => MaterialApp(
          title: 'User Profile',
          debugShowCheckedModeBanner: false,
          theme: new ThemeData(scaffoldBackgroundColor: Colors.black),
          home: ProfilePage(),
        ),
      ),
    );
  }
}


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Container(
      child: Builder(
        builder: (context) => Scaffold(
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              buildName(user),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 28),
      ),
      const SizedBox(height: 4),
      Text(
        user.email,
        style: TextStyle(
            color: Colors.white
        ),
      )
    ],
  );
}