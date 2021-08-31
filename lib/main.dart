import 'package:flutter/material.dart';

import 'app.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iFood',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: App(),
    );
  }
}
