import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//問題文
class ProblemSentence extends ConsumerWidget {
  const ProblemSentence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: Text("ProblemSentence"),
    );
  }
}
