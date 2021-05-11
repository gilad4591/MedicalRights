import 'package:medical_rights/widgets/custom_web_view.dart';
import 'dart:html';
import 'dart:ui' as ui;
import 'package:medical_rights/models/Data.dart';

import 'package:flutter/material.dart';
import 'package:medical_rights/widgets/row_app_bar.dart';

class VisuallyImpaired extends StatefulWidget {
  const VisuallyImpaired({Key key}) : super(key: key);

  @override
  _VisuallyImpairedState createState() => _VisuallyImpairedState();
}

List<Data> list = [
  Data('גמלת ילד נכה לעיוורים ולקויי ראייה',
      'https://www.kolzchut.org.il/he/%D7%92%D7%9E%D7%9C%D7%AA_%D7%99%D7%9C%D7%93_%D7%A0%D7%9B%D7%94_%D7%9C%D7%A2%D7%99%D7%95%D7%95%D7%A8%D7%99%D7%9D_%D7%95%D7%9C%D7%A7%D7%95%D7%99%D7%99_%D7%A8%D7%90%D7%99%D7%99%D7%94'),
  Data('קצבת נכות והטבות נלוות',
      'https://www.kolzchut.org.il/he/%D7%A7%D7%A6%D7%91%D7%AA_%D7%A0%D7%9B%D7%95%D7%AA_%D7%95%D7%94%D7%98%D7%91%D7%95%D7%AA_%D7%A0%D7%9C%D7%95%D7%95%D7%AA'),
  Data('קצבת שירותים מיוחדים והטבות נלוות',
      'https://www.kolzchut.org.il/he/%D7%A7%D7%A6%D7%91%D7%AA_%D7%A9%D7%99%D7%A8%D7%95%D7%AA%D7%99%D7%9D_%D7%9E%D7%99%D7%95%D7%97%D7%93%D7%99%D7%9D_%D7%95%D7%94%D7%98%D7%91%D7%95%D7%AA_%D7%A0%D7%9C%D7%95%D7%95%D7%AA'),
  Data('מבחן לבדיקת זכאות לקצבה לשירותים מיוחדים - IADL',
      'https://www.kolzchut.org.il/he/%D7%9E%D7%91%D7%97%D7%9F_IADL_%D7%9C%D7%91%D7%93%D7%99%D7%A7%D7%AA_%D7%96%D7%9B%D7%90%D7%95%D7%AA_%D7%9C%D7%A7%D7%A6%D7%91%D7%94_%D7%9C%D7%A9%D7%99%D7%A8%D7%95%D7%AA%D7%99%D7%9D_%D7%9E%D7%99%D7%95%D7%97%D7%93%D7%99%D7%9D'),
  Data('קצבה לאחזקת כלב נחייה',
      'https://www.kolzchut.org.il/he/%D7%A7%D7%A6%D7%91%D7%94_%D7%9C%D7%90%D7%97%D7%96%D7%A7%D7%AA_%D7%9B%D7%9C%D7%91_%D7%A0%D7%97%D7%99%D7%99%D7%94'),
  Data('דמי ליווי',
      'https://www.kolzchut.org.il/he/%D7%93%D7%9E%D7%99_%D7%9C%D7%99%D7%95%D7%95%D7%99_%D7%9C%D7%A2%D7%99%D7%95%D7%95%D7%A8%D7%99%D7%9D_%D7%95%D7%9C%D7%A7%D7%95%D7%99%D7%99_%D7%A8%D7%90%D7%99%D7%99%D7%94'),
  Data('גמלת סיעוד',
      'https://www.kolzchut.org.il/he/%D7%92%D7%9E%D7%9C%D7%AA_%D7%A1%D7%99%D7%A2%D7%95%D7%93'),
  Data(' פטור מבדיקת תלות (ADL) לגמלת סיעוד לעיוור המתגורר לבד',
      'https://www.kolzchut.org.il/he/%D7%9E%D7%A1%D7%9C%D7%95%D7%9C_%D7%9E%D7%94%D7%99%D7%A8_%D7%9C%D7%9C%D7%90_%D7%91%D7%93%D7%99%D7%A7%D7%AA_%D7%AA%D7%9C%D7%95%D7%AA_(ADL)_%D7%91%D7%AA%D7%91%D7%99%D7%A2%D7%94_%D7%9C%D7%92%D7%9E%D7%9C%D7%AA_%D7%A1%D7%99%D7%A2%D7%95%D7%93'),
  Data('תשלום הבטחת קיום לעולים עיוורים',
      'https://www.kolzchut.org.il/he/%D7%AA%D7%A9%D7%9C%D7%95%D7%9D_%D7%94%D7%91%D7%98%D7%97%D7%AA_%D7%A7%D7%99%D7%95%D7%9D_%D7%9C%D7%A2%D7%95%D7%9C%D7%99%D7%9D_%D7%A2%D7%9D_%D7%9E%D7%95%D7%92%D7%91%D7%9C%D7%95%D7%AA,_%D7%A0%D7%9B%D7%95%D7%AA_%D7%90%D7%95_%D7%A2%D7%99%D7%95%D7%95%D7%A8%D7%95%D7%9F'),
  Data('ביטוח מחלות קשות במסגרת ביטוח בריאות פרטי',
      'https://www.kolzchut.org.il/he/%D7%91%D7%99%D7%98%D7%95%D7%97_%D7%9E%D7%97%D7%9C%D7%95%D7%AA_%D7%A7%D7%A9%D7%95%D7%AA_%D7%91%D7%9E%D7%A1%D7%92%D7%A8%D7%AA_%D7%91%D7%99%D7%98%D7%95%D7%97_%D7%91%D7%A8%D7%99%D7%90%D7%95%D7%AA_%D7%A4%D7%A8%D7%98%D7%99'),
];

class _VisuallyImpairedState extends State<VisuallyImpaired> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "קצבאות וסיוע כלכלי ",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        "עיוורים ולקויי ראייה",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      // color: Colors.transparent  ,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: GridView.builder(
                          padding: const EdgeInsets.all(4.0),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 25.0,
                            crossAxisSpacing: 75.0,
                            crossAxisCount: 4,
                            childAspectRatio: 2.5,
                          ),
                          itemCount: 10,
                          itemBuilder: (context, i) {
                            //creating the list for the grid
                            return new GridTile(
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.05,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.blue[700],
                                      Colors.blue[200],
                                    ],
                                  ),
                                ),
                                child: InkWell(
                                  child: Center(
                                    child: Text(
                                      list[i].name,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  onTap: () {
                                    updateFrame(list[i].name, list[i].url);
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            CustomWebView(list[i].name,
                                                'עיוורים ולקויי ראייה'),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 100,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            // border: Border.all(
            //   color: Colors.black,
            // ),
            color: Colors.white,
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.blue,
                Colors.white,
              ],
              stops: [0.0, 1.0],
            ),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        title: RowAppBar(),
        elevation: 3,
      ),
    );
  }

  void updateFrame(String frameToUpdate, String srcFrame) {
    ui.platformViewRegistry.registerViewFactory(
        frameToUpdate,
        (int viewId) => IFrameElement()
          ..src = srcFrame
          ..style.border = 'none');
  }
}
