import 'package:flutter/material.dart';

import 'problem_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProblemPage(),
    );
  }
}
