import 'package:flutter/material.dart';

class RowAppBar extends StatelessWidget {
  const RowAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          child: ButtonMain('דף הבית'),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/', arguments: null);
          },
        ),
        InkWell(
          child: ButtonMain('עיוורים ולקויי ראייה'),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/visuallyimpaired',
                arguments: null);
          },
        ),
        InkWell(
          child: ButtonMain('חירשים ולקויי שמיעה'),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/hearingimpaired',
                arguments: null);
          },
        ),
        InkWell(
          child: ButtonMain('לקויות מוטוריות'),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/motoricalimpaired',
                arguments: null);
          },
        ),
        InkWell(
          child: ButtonMain('מוגבלות שכלית\n   התפתחותית'),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/devimpaired',
                arguments: null);
          },
        ),
      ],
    );
  }
}

class ButtonMain extends StatelessWidget {
  final String textButton;
  const ButtonMain(this.textButton, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF3383CD),
            Theme.of(context).accentColor,
            // Colors.black,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            textButton,
            style:
                TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
