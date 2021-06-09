import 'package:flutter/material.dart';
import 'package:medical_rights/models/Fontsize.dart';
import 'package:medical_rights/models/di.dart';
import 'package:medical_rights/widgets/row_app_bar.dart';
import 'package:medical_rights/widgets/custom_web_view.dart';
import 'package:medical_rights/models/Data.dart';
import 'dart:html';
import 'dart:ui' as ui;

List<Data> list = [
  Data('גמלת ילד נכה לחירשים וכבדי שמיעה',
      'https://www.kolzchut.org.il/he/%D7%92%D7%9E%D7%9C%D7%AA_%D7%99%D7%9C%D7%93_%D7%A0%D7%9B%D7%94_%D7%9C%D7%97%D7%99%D7%A8%D7%A9%D7%99%D7%9D_%D7%95%D7%9B%D7%91%D7%93%D7%99_%D7%A9%D7%9E%D7%99%D7%A2%D7%94'),
  Data('גמלת ילד נכה והטבות נלוות',
      'https://www.kolzchut.org.il/he/%D7%92%D7%9E%D7%9C%D7%AA_%D7%99%D7%9C%D7%93_%D7%A0%D7%9B%D7%94_%D7%95%D7%94%D7%98%D7%91%D7%95%D7%AA_%D7%A0%D7%9C%D7%95%D7%95%D7%AA'),
  Data('קביעת נכות בגין מחלות אף אוזן גרון',
      'https://www.kolzchut.org.il/he/%D7%92%D7%9E%D7%9C%D7%AA_%D7%99%D7%9C%D7%93_%D7%A0%D7%9B%D7%94_%D7%95%D7%94%D7%98%D7%91%D7%95%D7%AA_%D7%A0%D7%9C%D7%95%D7%95%D7%AA'),
  Data('קצבת נכות והטבות נלוות',
      'https://www.kolzchut.org.il/he/%D7%A7%D7%A6%D7%91%D7%AA_%D7%A0%D7%9B%D7%95%D7%AA_%D7%95%D7%94%D7%98%D7%91%D7%95%D7%AA_%D7%A0%D7%9C%D7%95%D7%95%D7%AA'),
  Data('דמי תקשורת לחירשים וכבדי שמיעה',
      'https://www.kolzchut.org.il/he/%D7%93%D7%9E%D7%99_%D7%AA%D7%A7%D7%A9%D7%95%D7%A8%D7%AA_%D7%9C%D7%97%D7%99%D7%A8%D7%A9%D7%99%D7%9D_%D7%95%D7%9B%D7%91%D7%93%D7%99_%D7%A9%D7%9E%D7%99%D7%A2%D7%94'),
  Data('ביטוח מחלות קשות במסגרת ביטוח בריאות פרטי',
      'https://www.kolzchut.org.il/he/%D7%91%D7%99%D7%98%D7%95%D7%97_%D7%9E%D7%97%D7%9C%D7%95%D7%AA_%D7%A7%D7%A9%D7%95%D7%AA_%D7%91%D7%9E%D7%A1%D7%92%D7%A8%D7%AA_%D7%91%D7%99%D7%98%D7%95%D7%97_%D7%91%D7%A8%D7%99%D7%90%D7%95%D7%AA_%D7%A4%D7%A8%D7%98%D7%99'),
];

class HearingImpaired extends StatefulWidget {
  const HearingImpaired({Key key}) : super(key: key);

  @override
  _HearingImpairedState createState() => _HearingImpairedState();
}

class _HearingImpairedState extends State<HearingImpaired> {
  final FontS fontSize = getIt();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              color: Colors.white,
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
                            style: TextStyle(
                              fontSize: fontSize.fontHeader,
                              color: Color(0xFF5b7f31),
                            ),
                          ),
                          Text(
                            "חירשים ולקויי שמיעה",
                            style: TextStyle(
                              fontSize: fontSize.fontHeader,
                              color: Color(0xFF5b7f31),
                            ),
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
                                crossAxisSpacing: 25.0,
                                crossAxisCount: 4,
                                childAspectRatio: 2.5,
                              ),
                              itemCount: list.length,
                              itemBuilder: (context, i) {
                                //creating the list for the grid
                                return new GridTile(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0,
                                              0), // changes position of shadow
                                        ),
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: Theme.of(context).accentColor,
                                    ),
                                    child: InkWell(
                                      child: Center(
                                        child: Text(
                                          list[i].name,
                                          style: TextStyle(
                                              fontSize: fontSize.fontS),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      onTap: () {
                                        updateFrame(list[i].name, list[i].url);
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                CustomWebView(list[i].name,
                                                    'חירשים וכבדי שמיעה'),
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
          Positioned(
            bottom: 115,
            left: 0,
            child: Container(
              width: 160,
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Color(0xFF2c5b86)),
            ),
          ),
          Positioned(
            bottom: 160,
            left: 20,
            child: Text(
              'שינוי גודל טקסט',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 120,
            left: 40,
            child: IconButton(
              color: Colors.white,
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  fontSize.increaseTextSize();
                });
              },
            ),
          ),
          Positioned(
            bottom: 120,
            left: 70,
            child: IconButton(
              color: Colors.white,
              icon: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  fontSize.decreaseTextSize();
                });
              },
            ),
          ),
        ],
      ),
      appBar: AppBar(
        leadingWidth: 100,
        leading: Center(
          child: Container(
            color: Theme.of(context).accentColor,
            width: 100,
            child: Center(
                child: Text(
              "זכויות רפואיות",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              // border: Border.all(
              //   color: Colors.black,
              // ),
              ),
        ),
        toolbarHeight: 100,

        backgroundColor: Theme.of(context).primaryColor,
        title: RowAppBar(),
        // centerTitle: true,
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
