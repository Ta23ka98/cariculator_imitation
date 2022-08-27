import 'package:cariculator_imitation/components/problem_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//問題文
class ProblemSentence extends ConsumerWidget {
  const ProblemSentence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //問題状態の問題文を取り出して表示する
    final sentence =
        ref.watch(problemStateProvider.select((state) => state.sentence));
    return Center(
      child: Text(
        sentence,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
