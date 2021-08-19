import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_app/app/controllers/controller.dart';

class HomePageController extends Controller {
  @override
  void construct(BuildContext context) {}

  void onTapDocumentation() => launch('https://nylo.dev/docs');

  void onTapGithub() => launch('https://github.com/nylo-core/nylo');

  void onTapChangeLog() =>
      launch('https://github.com/nylo-core/framework/blob/0.x/CHANGELOG.md');
}
