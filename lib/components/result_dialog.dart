import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'answer_textfield.dart';
import 'problem_state.dart';

class ResultDialog extends ConsumerWidget {
  const ResultDialog({Key? key, required this.status}) : super(key: key);

  final ProblemStatus status;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      children: [
        Icon(
          status.icon,
          color: status.color,
          size: 200,
        ),
        Center(
          child: Text(
            status.message,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // 問題状態と回答文字列をリフレッシュしてからダイアログを閉じる
                ref.refresh(problemStateProvider);
                ref.refresh(answerProvider);
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(
                  fontSize: 18,
                ),
              ),
              child: const Text('次の問題へ'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () => Navigator.of(context).pop(),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(
                  fontSize: 18,
                ),
              ),
              child: const Text('閉じる'),
            ),
          ),
        )
      ],
    );
  }
}

//問題ステータスの拡張関数
extension ProblemStatusHelpler on ProblemStatus {
  //アイコンを返す
  IconData get icon {
    switch (this) {
      case ProblemStatus.questioning:
        return Icons.help;
      case ProblemStatus.correct:
        return Icons.panorama_fish_eye;
      case ProblemStatus.incorrect:
        return Icons.close;
      case ProblemStatus.formatError:
        return Icons.warning;
    }
  }

  Color get color {
    switch (this) {
      case ProblemStatus.questioning:
        return Colors.blue.shade700;
      case ProblemStatus.correct:
        return Colors.green.shade700;
      case ProblemStatus.incorrect:
        return Colors.red.shade700;
      case ProblemStatus.formatError:
        return Colors.yellow.shade700;
    }
  }

  //メッセージを返す
  String get message {
    switch (this) {
      case ProblemStatus.questioning:
        return '？？？';
      case ProblemStatus.correct:
        return '正解です！';
      case ProblemStatus.incorrect:
        return '残念！';
      case ProblemStatus.formatError:
        return '数字を入力してください😡';
    }
  }
}
