import 'dart:html';
import 'dart:ui' as ui;

import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';
import 'package:medical_rights/widgets/app_drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VisuallyImpaired extends StatefulWidget {
  const VisuallyImpaired({Key key}) : super(key: key);

  @override
  _VisuallyImpairedState createState() => _VisuallyImpairedState();
}

class _VisuallyImpairedState extends State<VisuallyImpaired> {
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
                          'גמלת ילד נכה לעיוורים ולקויי ראייה',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        onTap: () {
                          updateFrame('gimla-disability',
                              'https://www.kolzchut.org.il/he/%D7%92%D7%9E%D7%9C%D7%AA_%D7%99%D7%9C%D7%93_%D7%A0%D7%9B%D7%94_%D7%9C%D7%A2%D7%99%D7%95%D7%95%D7%A8%D7%99%D7%9D_%D7%95%D7%9C%D7%A7%D7%95%D7%99%D7%99_%D7%A8%D7%90%D7%99%D7%99%D7%94');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CustomWebView('gimla-disability'),
                            ),
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
                          updateFrame('kitzba-disability',
                              'https://www.kolzchut.org.il/he/%D7%A7%D7%A6%D7%91%D7%AA_%D7%A0%D7%9B%D7%95%D7%AA_%D7%95%D7%94%D7%98%D7%91%D7%95%D7%AA_%D7%A0%D7%9C%D7%95%D7%95%D7%AA');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CustomWebView('kitzba-disability'),
                            ),
                          );
                        },
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      GestureDetector(
                        child: Text(
                          'קצבת שירותים מיוחדים והטבות נלוות',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        onTap: () {
                          updateFrame('kitzba-sherutim',
                              'https://www.kolzchut.org.il/he/%D7%A7%D7%A6%D7%91%D7%AA_%D7%A9%D7%99%D7%A8%D7%95%D7%AA%D7%99%D7%9D_%D7%9E%D7%99%D7%95%D7%97%D7%93%D7%99%D7%9D_%D7%95%D7%94%D7%98%D7%91%D7%95%D7%AA_%D7%A0%D7%9C%D7%95%D7%95%D7%AA');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CustomWebView('kitzba-sherutim'),
                            ),
                          );
                        },
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      GestureDetector(
                        child: Text(
                          'מבחן לבדיקת זכאות לקצבה לשירותים מיוחדים - IADL',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        onTap: () {
                          updateFrame('kitzba-iadl',
                              'https://www.kolzchut.org.il/he/%D7%9E%D7%91%D7%97%D7%9F_IADL_%D7%9C%D7%91%D7%93%D7%99%D7%A7%D7%AA_%D7%96%D7%9B%D7%90%D7%95%D7%AA_%D7%9C%D7%A7%D7%A6%D7%91%D7%94_%D7%9C%D7%A9%D7%99%D7%A8%D7%95%D7%AA%D7%99%D7%9D_%D7%9E%D7%99%D7%95%D7%97%D7%93%D7%99%D7%9D');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CustomWebView('kitzba-iadl'),
                            ),
                          );
                        },
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      GestureDetector(
                        child: Text(
                          'קצבה לאחזקת כלב נחייה',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        onTap: () {
                          updateFrame('dog-fund',
                              'https://www.kolzchut.org.il/he/%D7%A7%D7%A6%D7%91%D7%94_%D7%9C%D7%90%D7%97%D7%96%D7%A7%D7%AA_%D7%9B%D7%9C%D7%91_%D7%A0%D7%97%D7%99%D7%99%D7%94');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CustomWebView('dog-fund'),
                            ),
                          );
                        },
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      GestureDetector(
                        child: Text(
                          'דמי ליווי',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        onTap: () {
                          updateFrame('dmei-livuy',
                              'https://www.kolzchut.org.il/he/%D7%93%D7%9E%D7%99_%D7%9C%D7%99%D7%95%D7%95%D7%99_%D7%9C%D7%A2%D7%99%D7%95%D7%95%D7%A8%D7%99%D7%9D_%D7%95%D7%9C%D7%A7%D7%95%D7%99%D7%99_%D7%A8%D7%90%D7%99%D7%99%D7%94');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CustomWebView('dmei-livuy'),
                            ),
                          );
                        },
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      GestureDetector(
                        child: Text(
                          'גמלת סיעוד',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        onTap: () {
                          updateFrame('gimlat-sieud',
                              'https://www.kolzchut.org.il/he/%D7%92%D7%9E%D7%9C%D7%AA_%D7%A1%D7%99%D7%A2%D7%95%D7%93');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CustomWebView('gimlat-sieud'),
                            ),
                          );
                        },
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      GestureDetector(
                        child: Text(
                          ' פטור מבדיקת תלות (ADL) לגמלת סיעוד לעיוור המתגורר לבד',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        onTap: () {
                          updateFrame('ptor-bdika',
                              'https://www.kolzchut.org.il/he/%D7%9E%D7%A1%D7%9C%D7%95%D7%9C_%D7%9E%D7%94%D7%99%D7%A8_%D7%9C%D7%9C%D7%90_%D7%91%D7%93%D7%99%D7%A7%D7%AA_%D7%AA%D7%9C%D7%95%D7%AA_(ADL)_%D7%91%D7%AA%D7%91%D7%99%D7%A2%D7%94_%D7%9C%D7%92%D7%9E%D7%9C%D7%AA_%D7%A1%D7%99%D7%A2%D7%95%D7%93');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CustomWebView('ptor-bdika'),
                            ),
                          );
                        },
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      GestureDetector(
                        child: Text(
                          'תשלום הבטחת קיום לעולים עיוורים',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        onTap: () {
                          updateFrame('pay-promise',
                              'https://www.kolzchut.org.il/he/%D7%AA%D7%A9%D7%9C%D7%95%D7%9D_%D7%94%D7%91%D7%98%D7%97%D7%AA_%D7%A7%D7%99%D7%95%D7%9D_%D7%9C%D7%A2%D7%95%D7%9C%D7%99%D7%9D_%D7%A2%D7%9D_%D7%9E%D7%95%D7%92%D7%91%D7%9C%D7%95%D7%AA,_%D7%A0%D7%9B%D7%95%D7%AA_%D7%90%D7%95_%D7%A2%D7%99%D7%95%D7%95%D7%A8%D7%95%D7%9F');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CustomWebView('pay-promise'),
                            ),
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
                          updateFrame('ins-dissease',
                              'https://www.kolzchut.org.il/he/%D7%91%D7%99%D7%98%D7%95%D7%97_%D7%9E%D7%97%D7%9C%D7%95%D7%AA_%D7%A7%D7%A9%D7%95%D7%AA_%D7%91%D7%9E%D7%A1%D7%92%D7%A8%D7%AA_%D7%91%D7%99%D7%98%D7%95%D7%97_%D7%91%D7%A8%D7%99%D7%90%D7%95%D7%AA_%D7%A4%D7%A8%D7%98%D7%99');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CustomWebView('ins-dissease'),
                            ),
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
        toolbarHeight: 100,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("עיוורים ולקויי ראייה",
            style: Theme.of(context).textTheme.headline3),
        elevation: 3,
      ),
      // drawer: AppDrawer(),
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

class CustomWebView extends StatelessWidget {
  const CustomWebView(
    this.viewTypeHTML, {
    Key key,
  }) : super(key: key);
  final String viewTypeHTML;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,

        backgroundColor: Theme.of(context).primaryColor,
        title: Text("עיוורים ולקויי ראייה",
            style: Theme.of(context).textTheme.headline3),
        // centerTitle: true,
        elevation: 3,
      ),
      // drawer: AppDrawer(),
      body: Container(
        // width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.8,
        child: HtmlElementView(viewType: viewTypeHTML),
      ),
    );
  }
}

// class MyWebView extends StatelessWidget {
//   final String title;
//   final String selectedUrl;

//   final Completer<WebViewController> _controller =
//       Completer<WebViewController>();

//   MyWebView({
//     @required this.title,
//     @required this.selectedUrl,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: WebView(
//         initialUrl: selectedUrl,
//         javascriptMode: JavascriptMode.unrestricted,
//         onWebViewCreated: (WebViewController webViewController) {
//           _controller.complete(webViewController);
//         },
//       ),
//     );
//   }
// }
