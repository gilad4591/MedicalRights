import 'package:flutter/material.dart';
import 'package:medical_rights/models/Fontsize.dart';
import 'package:medical_rights/models/Scale.dart';
import 'package:medical_rights/models/di.dart';
import 'package:medical_rights/widgets/row_app_bar.dart';

Scale scale;

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final FontS fontSize = getIt();
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
              ),
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
        ),
        toolbarHeight: 100,
        backgroundColor: Theme.of(context).primaryColor,
        title: RowAppBar(),
        elevation: 3,
      ),
      body: Stack(
        children: [
          Container(
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
                      color: Theme.of(context).primaryColor,
                    ),
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "אתר זה הוקם על מנת לסייע למציאת מידע אודות קצבאות וסיוע כלכלי עבור בעלי לקויות שונות ומפנה למקור הרלוונטי באתר כל זכות.",
                            style: TextStyle(
                                fontSize: fontSize.fontS,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "לכל שאלה, טענה או הערות לשיפור הנראות ו\\או תוכן האתר ניתן לפנות במייל:",
                            style: TextStyle(
                                fontSize: fontSize.fontS,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "patientright4422@gmail.com",
                            style: TextStyle(
                                fontSize: fontSize.fontS,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
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
    );
  }
}
