import 'package:flutter/material.dart';

import 'package:nylo_support/router/router.dart';
import 'package:page_transition/page_transition.dart';

import 'package:flutter_app/resources/pages/home_page.dart';

dynamic buildRouter() => nyCreateRoutes(
      (NyRouter router) => router.route(
        '/',
        (BuildContext context) => HomePage(title: 'Home Page'),
        transition: PageTransitionType.fade,
      ),
    );
