import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'components/problem_sentence.dart';
import 'components/answer_textfield.dart';
import 'components/check_button.dart';

class ProblemPage extends ConsumerWidget {
  const ProblemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('算数問題'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(height: 16),
            ProblemSentence(),
            SizedBox(height: 16),
            AnswerTextField(),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: CheckButton(),
            ),
          ],
        ),
      ),
    );
  }
}
