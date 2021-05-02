import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:medical_rights/presentation/main_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).accentColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                title: Text(
                  "Text",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'דף הבית',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/', arguments: null);
                },
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'עיוורים ולקויי ראייה',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/visuallyimpaired',
                    arguments: null,
                  );
                },
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'חירשים וכבדי שמיעה',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/hearingimpaired',
                    arguments: null,
                  );
                },
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'דף הבית',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'דף הבית',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
