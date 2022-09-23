import 'package:flutter/material.dart';
import 'package:shop_apps/constants.dart';
import 'package:shop_apps/screens/home/home_screen.dart';
import 'package:shop_apps/screens/profile/components/profile_pic.dart';
import 'package:shop_apps/components/default_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile Page',
      home: Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ProfilePic(),
          const SizedBox(
            height: 20,
          ),
          const Center(
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Text(
                      'NAME: ',
                      style: headingStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      'Thitirat Kittipiboon',
                      style: front,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Text(
                      'Email: ',
                      style: headingStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      'beamtri05@gmail.com',
                      style: front,
                    ),
                  ),
                ],
              ),
            ],
          ),
          DefaultButton(
                      text: "Save",
                      press: () {
                        // Navigator.pushNamed(context, SignInScreen.routeName);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()),
                        );
                      },
                    ),
        ],
      ),
    ),
  );
  }
}