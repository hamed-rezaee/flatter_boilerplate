import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nylo_support/localization/app_localization.dart';

// ignore: must_be_immutable
class AppBuild extends StatelessWidget {
  AppBuild({
    required this.locale,
    required this.themeData,
    required this.onGenerateRoute,
    Key? key,
    this.initialRoute,
    this.title,
    this.defaultBrightness,
    this.navigatorKey,
    this.onGenerateInitialRoutes,
    this.onUnknownRoute,
    this.navigatorObservers = const <NavigatorObserver>[],
    this.builder,
    this.onGenerateTitle,
    this.color,
    this.darkTheme,
    this.themeMode = ThemeMode.system,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.debugShowMaterialGrid = false,
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    this.shortcuts,
    this.actions,
  }) : super(key: key);

  String? initialRoute;
  Brightness? defaultBrightness;
  ThemeData themeData;
  ThemeData? darkTheme;
  Locale locale;
  String? title;
  bool debugShowCheckedModeBanner;
  bool debugShowMaterialGrid;
  bool showPerformanceOverlay;
  bool checkerboardRasterCacheImages;
  bool checkerboardOffscreenLayers;
  bool showSemanticsDebugger;
  Map<LogicalKeySet, Intent>? shortcuts;
  Map<Type, Action<Intent>>? actions;
  List<Locale> supportedLocales;
  ThemeMode themeMode;
  Color? color;
  GenerateAppTitle? onGenerateTitle;
  TransitionBuilder? builder;
  List<NavigatorObserver> navigatorObservers;
  RouteFactory? onUnknownRoute;
  InitialRouteListFactory? onGenerateInitialRoutes;
  GlobalKey<NavigatorState>? navigatorKey;

  Route<dynamic>? Function(RouteSettings settings) onGenerateRoute;

  @override
  Widget build(BuildContext context) => AdaptiveTheme(
        light: themeData,
        dark: darkTheme,
        initial: AdaptiveThemeMode.light,
        builder: (ThemeData theme, ThemeData darkTheme) =>
            ValueListenableBuilder<Locale>(
          valueListenable: ValueNotifier<Locale>(locale),
          builder: (BuildContext context, Locale locale, _) => MaterialApp(
            navigatorKey: navigatorKey,
            themeMode: themeMode,
            onGenerateTitle: onGenerateTitle,
            onGenerateInitialRoutes: onGenerateInitialRoutes,
            onUnknownRoute: onUnknownRoute,
            builder: builder,
            navigatorObservers: navigatorObservers,
            color: color,
            supportedLocales: supportedLocales,
            debugShowMaterialGrid: debugShowMaterialGrid,
            showPerformanceOverlay: showPerformanceOverlay,
            checkerboardRasterCacheImages: checkerboardRasterCacheImages,
            checkerboardOffscreenLayers: checkerboardOffscreenLayers,
            showSemanticsDebugger: showSemanticsDebugger,
            debugShowCheckedModeBanner: debugShowCheckedModeBanner,
            shortcuts: shortcuts,
            actions: actions,
            title: title ?? '',
            darkTheme: darkTheme,
            initialRoute: initialRoute,
            onGenerateRoute: onGenerateRoute,
            locale: locale,
            theme: theme,
            localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
              AppLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalMaterialLocalizations.delegate
            ],
            localeResolutionCallback:
                (Locale? locale, Iterable<Locale> supportedLocales) => locale,
          ),
        ),
      );
}
