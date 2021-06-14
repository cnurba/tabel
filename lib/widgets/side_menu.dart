import 'package:flutter/material.dart';

import 'side_menu_detail.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: MediaQuery.of(context).size.width * 0.284,
      color: Color(0xFF1a0000),
      // decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //   colors: [
      //     Colors.black,
      //     Colors.red,
      //   ],
      //   begin: Alignment.bottomCenter,
      //   end: Alignment.topCenter,

      // )),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 70,
              width: 120,
              color: Colors.blue,
            ),
          ),
          _SideMenuIconTab(
            icon: Icons.home,
            title: 'Home',
            onTap: () {},
          ),
          _SideMenuIconTab(
            icon: Icons.search,
            title: 'Search',
            onTap: () {},
          ),
          _SideMenuIconTab(
            icon: Icons.audiotrack_rounded,
            title: 'Audio',
            onTap: () {},
          ),
          //const SizedBox(height: 12.0),
          AspectRatio(
            aspectRatio: 0.9,
            child: LibraryPleyLists(),
          ),
        ],
      ),
    );
  }
}

class _SideMenuIconTab extends StatelessWidget {
  const _SideMenuIconTab({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
