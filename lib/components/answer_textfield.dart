import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'problem_state.dart';

//回答テキストフィールド
class AnswerTextField extends ConsumerStatefulWidget {
  const AnswerTextField({Key? key}) : super(key: key);

  @override
  ConsumerState<AnswerTextField> createState() => _AnswerTextFieldState();
}

class _AnswerTextFieldState extends ConsumerState<AnswerTextField> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
