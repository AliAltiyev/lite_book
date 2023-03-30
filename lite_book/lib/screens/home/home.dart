import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:lite_book/data/src/colors.dart';
import 'package:lite_book/data/src/constants.dart';
import 'package:lite_book/data/src/strings.dart';
import 'package:lite_book/screens/home/home_controller.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({super.key});

  final String pageName = '/HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: _buildDrawer(context),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(home),
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [],
        ));
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: mainAppColor),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(kOnBoardingFirstImagePath),
              ),
              accountName: Text('Abdusselam'),
              accountEmail: Text('alidroid@gmail.com')),
          _buildListTile(
              icon: Icons.home,
              label: home,
              onPress: () => Scaffold.of(context).closeDrawer()),
          _buildListTile(icon: Icons.person, label: 'Profile', onPress: () {}),
          _buildListTile(icon: Icons.info, label: 'About', onPress: () {}),
          _buildListTile(icon: Icons.logout, label: 'Sign out', onPress: () {})
        ],
      ),
    );
  }

  Column _buildListTile(
      {required IconData icon,
      required String label,
      required VoidCallback onPress}) {
    return Column(
      children: [
        ListTile(
          onTap: onPress,
          trailing: Icon(Icons.arrow_forward_ios),
          leading: Icon(icon),
          title: Text(label),
        ),
        const Divider(
          color: Colors.white30,
        )
      ],
    );
  }
}
