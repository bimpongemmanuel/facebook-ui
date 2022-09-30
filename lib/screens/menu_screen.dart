import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: menuAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGUlMjBwaG90b3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
              ),
              title: Text('Blacko'),
              subtitle: Text('See your proflle'),
            ),
            Row(
              children: [
                MenuCard(
                  icon: Icons.feed,
                  bright: Colors.blue,
                  text: 'Feeds',
                ),
                MenuCard(
                  icon: Icons.person_search,
                  bright: Colors.blue,
                  text: 'Find friends',
                ),
              ],
            ),
            Row(
              children: [
                MenuCard(
                  icon: Icons.group,
                  bright: Colors.blue,
                  text: 'Groups',
                ),
                MenuCard(
                  icon: Icons.home,
                  bright: Colors.blue,
                  text: 'market place',
                ),
              ],
            ),
            Row(
              children: [
                MenuCard(
                  icon: Icons.tv,
                  bright: Colors.blue,
                  text: 'Videos on Watch',
                ),
                MenuCard(
                  icon: Icons.alarm,
                  bright: Colors.blue,
                  text: 'Memories',
                ),
              ],
            ),
            Row(
              children: [
                MenuCard(
                  icon: Icons.bookmark,
                  bright: Colors.blue,
                  text: 'Saved',
                ),
                MenuCard(
                  icon: Icons.flag,
                  bright: Colors.red,
                  text: 'Pages',
                ),
              ],
            ),
            Row(
              children: [
                MenuCard(
                  icon: Icons.calendar_month,
                  bright: Colors.blue,
                  text: 'Events',
                ),
                MenuCard(
                  icon: Icons.games,
                  bright: Colors.blue,
                  text: 'Gaming',
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {},
                child: Center(
                    child: Text(
                  'See more',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 15),
                ))),
            const SizedBox(
              width: 15,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  const Icon(Icons.handshake),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Community resources',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 20))
                ]),
                const Icon(Icons.keyboard_arrow_down),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  const Icon(Icons.question_mark),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('  Help & support',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 20))
                ]),
                const Icon(Icons.keyboard_arrow_down),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  const Icon(Icons.settings),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Settings & privacy',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 20))
                ]),
                const Icon(Icons.keyboard_arrow_down),
              ],
            ),
            const Divider(),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {},
                child: Center(
                    child: Text(
                  'Log out',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 15),
                ))),
            Container(
              height: 150,
            )
          ]),
        ),
      ),
    );
  }

  AppBar menuAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: const Text(
        'Menu',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      actions: [
        FloatingActionButton(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          mini: true,
          onPressed: () {},
          child: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          mini: true,
          onPressed: () {},
          child: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}

class MenuCard extends StatelessWidget {
  MenuCard({
    this.icon,
    this.text,
    this.bright,
    Key? key,
  }) : super(key: key);

  IconData? icon;
  String? text;
  MaterialColor? bright;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 180,
      child: Card(
        // margin:const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: bright,
                size: 25,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text!,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
