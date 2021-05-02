import 'package:flutter/material.dart';
import 'package:medical_rights/widgets/app_drawer.dart';

class HearingImpaired extends StatelessWidget {
  const HearingImpaired({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).accentColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "קצבאות וסיוע כלכלי",
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child: Text(
                          'גמלת ילד נכה לחירשים וכבדי שמיעה',
                          style: Theme.of(context).textTheme.bodyText1,
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
                      GestureDetector(
                        child: Text(
                          'גמלת ילד נכה והטבות נלוות',
                          style: Theme.of(context).textTheme.bodyText1,
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
                      GestureDetector(
                        child: Text(
                          'קביעת נכות בגין מחלות אף אוזן גרון',
                          style: Theme.of(context).textTheme.bodyText1,
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
                      GestureDetector(
                        child: Text(
                          'קצבת נכות והטבות נלוות',
                          style: Theme.of(context).textTheme.bodyText1,
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
                      GestureDetector(
                        child: Text(
                          'דמי תקשורת לחירשים וכבדי שמיעה',
                          style: Theme.of(context).textTheme.bodyText1,
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
                      GestureDetector(
                        child: Text(
                          'ביטוח מחלות קשות במסגרת ביטוח בריאות פרטי',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/hearingimpaired',
                            arguments: null,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("חירשים וכבדי שמיעה",
            style: Theme.of(context).textTheme.headline3),
        // centerTitle: true,
        elevation: 3,
      ),
      drawer: AppDrawer(),
    );
  }
}
