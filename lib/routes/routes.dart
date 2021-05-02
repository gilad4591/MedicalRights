import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:medical_rights/presentation/hearing_impaired.dart';
import 'package:medical_rights/presentation/main_page.dart';
import 'package:medical_rights/presentation/visually_impaired.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static Handler _mainHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        MainPage(),
  );
  static Handler _visualHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        VisuallyImpaired(),
  );
  static Handler _hearHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
        HearingImpaired(),
  );

  // ok its all set now .....
  // now lets have a handler for passing parameter tooo....

  static void setupRouter() {
    router.define('/', handler: _mainHandler);
    router.define('/visuallyimpaired', handler: _visualHandler);
    router.define('/hearingimpaired', handler: _hearHandler);
  }
}
