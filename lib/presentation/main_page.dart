import 'package:flutter/material.dart';
import 'package:medical_rights/widgets/row_app_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        toolbarHeight: 100,
        backgroundColor: Theme.of(context).primaryColor,
        title: RowAppBar(),
        elevation: 3,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).accentColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(
              // height: MediaQuery.of(context).size.height * 0.05,
              // ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('lib/assets/mainPic.jpg'),
                      ),

                      // backgroundBlendMode: ,
                      border: Border.all(color: Colors.black),
                    ),
                    // child: Image.asset('lib/assets/mainPic.jpg',
                    //     height: MediaQuery.of(context).size.height * 0.5,
                    //     width: MediaQuery.of(context).size.width,
                    //     fit: BoxFit.fill),
                    height: MediaQuery.of(context).size.height * 0.7,
                  ),
                ],
              ),
              Container(
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
                      Colors.grey.withOpacity(0.0),
                    ],
                    stops: [0.0, 1.0],
                  ),
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
