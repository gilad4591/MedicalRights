import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:medical_rights/routes/routes.dart';

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
            Flurorouter.router.navigateTo(
              context,
              "/",
              transition: TransitionType.fadeIn,
            );
          },
        ),
        InkWell(
          child: ButtonMain('עיוורים ולקויי ראייה'),
          onTap: () {
            Flurorouter.router.navigateTo(context, "/visuallyimpaired",
                transition: TransitionType.fadeIn);
          },
        ),
        InkWell(
          child: ButtonMain('חירשים ולקויי שמיעה'),
          onTap: () {
            Flurorouter.router.navigateTo(context, "/hearingimpaired",
                transition: TransitionType.fadeIn);
          },
        ),
        InkWell(
          child: ButtonMain('לקויות מוטוריות'),
          onTap: () {
            Flurorouter.router.navigateTo(context, "/motoricalimpaired",
                transition: TransitionType.fadeIn);
          },
        ),
        InkWell(
          child: ButtonMain('מוגבלות שכלית\n   התפתחותית'),
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
  const ButtonMain(this.textButton, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            textButton,
            style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold,
              // shadows: <Shadow>[
              //   Shadow(
              //     offset: Offset(0.0, 0.0),
              //     blurRadius: 5.0,
              //     color: Colors.white,
              //   ),
              // ],
            ),
          ),
        ],
      ),
    );
  }
}
