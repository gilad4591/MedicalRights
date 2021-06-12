import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:medical_rights/models/Fontsize.dart';
import 'package:medical_rights/routes/routes.dart';

class RowAppBar extends StatefulWidget {
  const RowAppBar({
    Key key,
  }) : super(key: key);

  @override
  _RowAppBarState createState() => _RowAppBarState();
}

class _RowAppBarState extends State<RowAppBar> {
  FontS fontSize = FontS();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          child: Row(
            children: [
              ButtonMain('דף הבית', 'homePage'),
            ],
          ),
          onTap: () {
            Flurorouter.router.navigateTo(
              context,
              "/",
              transition: TransitionType.fadeIn,
            );
          },
        ),
        InkWell(
          child: ButtonMain('עיוורים ולקויי ראייה', 'visualImpaired'),
          onTap: () {
            Flurorouter.router.navigateTo(context, "/visuallyimpaired",
                transition: TransitionType.fadeIn);
          },
        ),
        InkWell(
          child: ButtonMain('חירשים ולקויי שמיעה', 'hearingImpaired'),
          onTap: () {
            Flurorouter.router.navigateTo(context, "/hearingimpaired",
                transition: TransitionType.fadeIn);
          },
        ),
        InkWell(
          child: ButtonMain('לקויות מוטוריות', 'motoricalImpaired'),
          onTap: () {
            Flurorouter.router.navigateTo(context, "/motoricalimpaired",
                transition: TransitionType.fadeIn);
          },
        ),
        InkWell(
          child:
              ButtonMain('מוגבלות שכלית\n   התפתחותית', 'developmentImpaired'),
          onTap: () {
            Flurorouter.router.navigateTo(context, "/devimpaired",
                transition: TransitionType.fadeIn);
          },
        ),
      ],
    );
  }
}

class ButtonMain extends StatelessWidget {
  final String textButton;
  final String icon;
  const ButtonMain(this.textButton, this.icon, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      // height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'lib/assets/' + icon + '.png',
                    ),
                  ),
                ),
              ),
              Text(
                ' ' + textButton,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
