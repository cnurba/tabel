import 'package:flutter/material.dart';

import 'track_list.dart';

class UserList extends StatelessWidget {
  const UserList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 260,
          ),
          TrackList(),
        ],
      ),
      height: double.infinity,
      width: MediaQuery.of(context).size.width / 1.4,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.red,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
    );
  }
}
