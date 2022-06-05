import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/login_page.dart';

class MyDrawer extends StatelessWidget {
  String a = LoginPageState().name;
  String url = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwallpapercave.com%2Flogin-page-wallpapers&psig=AOvVaw2p_DCKqHexMgoE01LEURXc&ust=1654441675920000&source=images&cd=vfe&ved=0CAkQjRxqFwoTCMDCx-eJlPgCFQAAAAAdAAAAABAD";
  String imageUrl =
      "https://media-exp1.licdn.com/dms/image/C4D03AQGvJDm49Pd76w/profile-displayphoto-shrink_800_800/0/1653980127911?e=1659571200&v=beta&t=5lZ2e09JO_qin98QW3cssWcujWNHYdx1KR5gpPWI4-w";
  //const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(LoginPageState().name),
                accountEmail: Text("harshchoudhary66669@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(url))),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text("My Profile"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text("Our products"),
          )
        ],
      ), // listview renders only the onscreen content
    );
  }
}
