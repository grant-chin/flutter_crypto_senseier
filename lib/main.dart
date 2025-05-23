import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'common/share_pref.dart';

import 'pages/index.dart';
import 'pages/profile.dart';
import 'pages/chapter.dart';
import 'pages/lesson.dart';
import 'pages/lesson_detail.dart';
import 'pages/common_sense.dart';
import 'pages/battle_detail.dart';

void main() => SharePref.init().then((e) => runApp(MainApp()));

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Mulish',
      ),
      initialRoute: '/',
      home: IndexPage(),
      getPages: [
        GetPage(name: '/chapter', page: () => ChapterPage()),
        GetPage(name: '/profile', page: () => ProfilePage()),
        GetPage(name: '/lesson', page: () => LessonPage()),
        GetPage(name: '/lesson_detail', page: () => LessonDetail()),
        GetPage(name: '/common_sense', page: () => CommonSense()),
        GetPage(name: '/battle_detail', page: () => BattleDetail()),
      ],
    );
  }
}
