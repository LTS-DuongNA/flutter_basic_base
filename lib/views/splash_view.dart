import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../consts/colors/Colors.dart';
import '../consts/fonts/Fonts.dart';
import '../consts/images/ImagePath.dart';
import '../consts/strings/str_const.dart';
import '../consts/urls/URLConst.dart';
import '../generated/l10n.dart';
import '../models/auth.dart';
import '../models/error.dart';
import '../models/user_model.dart';
import '../observable/observable_serivce.dart';
import '../utils/pref_util.dart';
import '../viewmodels/authentication_viewmodel.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'common/exit_app_scope.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashView();
  }
}

class _SplashView extends State<SplashView> {
  ObservableService _observableService = ObservableService();
  late final SplashViewModel _splashViewModel;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  StreamSubscription<UserModel?>? apiResponseListener = null;

  @override
  void initState() {
    _splashViewModel = Provider.of<SplashViewModel>(context, listen: false);
    super.initState();

    //set orientation is landscape
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Logic for go to other screen
      // On boarding ?? Login ?? Home ??.
      // Navigator.of(_scaffoldKey.currentContext!)
      //     .pushReplacement(MaterialPageRoute(builder: (_) => OtherScreen()));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ExitAppScope(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: ColorStyle.getSystemBackground(),
        body: InkWell(
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Container(
            alignment: Alignment.center,
            child:  Image.asset(
              ImagePath.splash,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
