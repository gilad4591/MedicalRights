import 'package:flutter/material.dart';

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
                  // title: Text(
                  //   "תפריט ניווט",
                  //   style: Theme.of(context).textTheme.headline3,
                  // ),
                  ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
                // color: Theme.of(context).primaryColor,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // border: Border.all(color: Theme.of(context).primaryColor),
                    image: DecorationImage(
                      image: AssetImage('lib/assets/circleLogo.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Theme.of(context).primaryColor,
                child: ListTile(
                  title: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'דף הבית',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/', arguments: null);
                  },
                ),
              ),
              // Divider(
              //   color: Colors.white,
              // ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Theme.of(context).primaryColor,
                child: ListTile(
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
              ),
              // Divider(
              //   color: Colors.white,
              // ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Theme.of(context).primaryColor,
                child: ListTile(
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
              ),
              // Divider(
              //   color: Colors.white,
              // ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Theme.of(context).primaryColor,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'טקסט',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
              ),
              // Divider(
              //   color: Colors.white,
              // ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Theme.of(context).primaryColor,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'טקסט',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
