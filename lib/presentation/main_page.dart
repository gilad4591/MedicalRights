import 'package:flutter/material.dart';
import 'package:medical_rights/models/Scale.dart';
import 'package:medical_rights/widgets/row_app_bar.dart';

Scale scale;

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            color: Theme.of(context).primaryColor,
            // gradient: LinearGradient(
            //   begin: FractionalOffset.topCenter,
            //   end: FractionalOffset.bottomCenter,
            //   colors: [
            //     Colors.blue,
            //     Colors.white,
            //   ],
            //   stops: [0.0, 1.0],
            // ),
          ),
        ),
        toolbarHeight: 100,
        backgroundColor: Theme.of(context).primaryColor,
        title: RowAppBar(),
        elevation: 3,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('lib/assets/mainPic.jpg'),
                      ),
                      border: Border.all(color: Colors.black),
                    ),
                    height: MediaQuery.of(context).size.height * 0.7,
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: Colors.black,
                  // ),
                  color: Theme.of(context).primaryColor,
                ),

                // color: Theme.of(context).primaryColor,
                height: MediaQuery.of(context).size.height * 0.17,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "אתר זה הוקם על מנת לסייע למציאת מידע אודות קצבאות וסיוע כלכלי עבור בעלי לקויות שונות ומפנה למקור הרלוונטי באתר כל זכות.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "לכל שאלה, טענה או הערות לשיפור הנראות ו\\או תוכן האתר ניתן לפנות במייל:",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "patientright4422@gmail.com",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
