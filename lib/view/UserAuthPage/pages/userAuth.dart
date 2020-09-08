import 'package:ZeljoApp/utils/shared/colors.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class UserAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 10,
                              bottom: SizeConfig.blockSizeVertical * 6),
                          child: Text(
                            "Dobrodošli! Šta biste da jedete?",
                            style: TextStyle(fontSize: 19),
                          ),
                        ),
                        FacebookSignInButton(onPressed: () {}),
                        SizedBox(height: 5),
                        Container(
                            width: 250,
                            child: GoogleSignInButton(onPressed: () {})),
                        SizedBox(height: 5),
                        Container(
                          width: 250,
                          child: RaisedButton.icon(
                            color: Colors.white,
                            icon: Icon(
                              Icons.email,
                              color: Colors.grey[600],
                            ),
                            label: Text('Prijava sa emailom'),
                            onPressed: () {},
                          ),
                        ),
                        Text(
                          "Prijavom prihvatate uslove korištenja",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 20,
                              left: SizeConfig.blockSizeHorizontal * 40),
                          child: FlatButton(
                            onPressed: () {},
                            color: Colors.transparent,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  SizeConfig.safeBlockHorizontal * 6,
                                  0,
                                  SizeConfig.safeBlockHorizontal * 6,
                                  0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Preskoči',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.orange[300],
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.orange[300],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
