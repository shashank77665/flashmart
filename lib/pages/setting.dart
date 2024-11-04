import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios)),
                    Text(
                      'Settings',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Container()
                  ],
                ),
              )),
          Expanded(
              flex: 20,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12, top: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.people),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              'Shashank',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('9931077665')
                          ],
                        )
                      ],
                    ),
                  ),
                  SettingItem(icon: Icon(Icons.shopping_bag), title: 'Orders'),
                  Divider(),
                  SettingItem(
                      icon: Icon(Icons.chat), title: 'Customer Support'),
                  Divider(),
                  SettingItem(
                      icon: Icon(Icons.location_city), title: 'Address'),
                  Divider(),
                  SettingItem(icon: Icon(Icons.refresh), title: 'Refunds'),
                  Divider(),
                  SettingItem(icon: Icon(Icons.people), title: 'Profile'),
                  Divider(),
                  SettingItem(
                      icon: Icon(Icons.new_label), title: 'Suggest Products'),
                  Divider(),
                  SettingItem(icon: Icon(Icons.info), title: 'General Info'),
                  Divider(),
                  SettingItem(icon: Icon(Icons.alarm), title: 'Notifications')
                ],
              ))
        ],
      )),
    );
  }
}

class SettingItem extends StatelessWidget {
  final Icon icon;
  final String title;

  SettingItem({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 10,
      ),
    );
  }
}
