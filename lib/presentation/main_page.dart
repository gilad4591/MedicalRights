import 'package:flutter/material.dart';
import 'package:medical_rights/widgets/app_drawer.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("מידע על זכויות רפואיות",
            style: Theme.of(context).textTheme.headline3),
        // centerTitle: true,
        elevation: 3,
      ),
      drawer: AppDrawer(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).accentColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Image.asset(
                  'lib/assets/mainPic.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
