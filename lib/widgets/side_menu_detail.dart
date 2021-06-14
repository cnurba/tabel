import 'package:flutter/material.dart';
import 'package:tabel/data/data.dart';

class LibraryPleyLists extends StatefulWidget {
  LibraryPleyLists({Key? key}) : super(key: key);

  @override
  _LibraryPleyListsState createState() => _LibraryPleyListsState();
}

class _LibraryPleyListsState extends State<LibraryPleyLists> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' Календар ',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            ...calendar.map(
              (e) => ListTile(
                dense: true,
                leading: Text(
                  e,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.white,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text(
                  e,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.white,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CalendarScreen extends StatefulWidget {
  CalendarScreen({Key? key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  List<String> listOfDays = ["ПН", "ВТ", "СР", "ЧТ", "ПТ", "СБ", "ВС"];

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' Календар ',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            ...calendar.map(
              (e) => ListTile(
                dense: true,
                leading: Text(
                  e,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.white,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text(
                  e,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.white,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
