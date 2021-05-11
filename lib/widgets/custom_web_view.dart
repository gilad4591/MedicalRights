import 'package:flutter/material.dart';

class CustomWebView extends StatelessWidget {
  const CustomWebView(
    this.viewTypeHTML,
    this.pageTitle, {
    Key key,
  }) : super(key: key);
  final String viewTypeHTML;
  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(pageTitle, style: Theme.of(context).textTheme.headline3),
        elevation: 3,
      ),
      body: Container(
        // width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.8,
        child: HtmlElementView(viewType: viewTypeHTML),
      ),
    );
  }
}
