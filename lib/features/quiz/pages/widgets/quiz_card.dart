import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn/features/quiz/bloc/quiz_bloc.dart';
import 'package:flutter_learn/features/quiz/bloc/quiz_event.dart';
import 'package:flutter_learn/features/quiz/bloc/quiz_state.dart';
import 'package:flutter_learn/features/quiz/models/quiz.dart';

class QuizCard extends StatefulWidget {
  final Quiz quiz;
  const QuizCard({super.key, required this.quiz});

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  Set<String> selectedMultipleAnswers = {};

  String? selectedSingleAnswer;

  final TextEditingController fillInController = TextEditingController();

  bool? selectedTrueOrFalse;

  @override
  void dispose() {
    fillInController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.quiz.map(
                multipleChoiceMultipleAnswers: (q) => q.question,
                multipleChoiceSingleAnswer: (q) => q.question,
                fillInTheBlank: (q) => q.question,
                trueOrFalse: (q) => q.question,
              ),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            Text(
              widget.quiz.map(
                multipleChoiceMultipleAnswers: (_) =>
                    'Multiple Choice (Multiple Answers)',
                multipleChoiceSingleAnswer: (_) =>
                    'Multiple Choice (Single Answer)',
                fillInTheBlank: (_) => 'Fill in the Blank',
                trueOrFalse: (_) => 'True or False',
              ),
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),

            widget.quiz.map(
              multipleChoiceMultipleAnswers: (q) =>
                  _buildMultipleChoiceMultipleAnswers(q),
              multipleChoiceSingleAnswer: (q) =>
                  _buildMultipleChoiceSingleAnswer(q),
              fillInTheBlank: (q) => _buildFillInTheBlank(q),
              trueOrFalse: (q) => _buildTrueOrFalse(q),
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: BlocBuilder<QuizBloc, QuizState>(
                builder: (context, state) {
                  if (state is QuizSession &&
                      state.currentIndex < state.quizzes.length - 1) {
                    return FilledButton(
                      onPressed: _isAnswered ? _handleNextQuestion : null,
                      style: FilledButton.styleFrom(
                        backgroundColor: _isAnswered ? Theme.of(context).colorScheme.primary : Colors.grey[300],
                      ),
                      
                      child: const Text('Next Question'),
                    );
                  }
                  return FilledButton(
                    onPressed: _handleSubmitQuiz,
                    child: const Text('Submit Quiz'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMultipleChoiceMultipleAnswers(
    MultipleChoiceWithMultipleAnswers quiz,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: quiz.options.map((option) {
        final optionId = option.id.toString();
        return CheckboxListTile(
          title: Text(option.option),
          value: selectedMultipleAnswers.contains(optionId),
          onChanged: (bool? value) {
            setState(() {
              if (value == true) {
                selectedMultipleAnswers.add(optionId);
              } else {
                selectedMultipleAnswers.remove(optionId);
              }
            });
          },
        );
      }).toList(),
    );
  }

  void _handleSubmitQuiz() {
    context.read<QuizBloc>().add(QuizSessionSubmitted());
  }

  Widget _buildMultipleChoiceSingleAnswer(MultipleChoiceWithSingleAnswer quiz) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: quiz.options.map((option) {
        final optionId = option.id.toString();
        return RadioListTile<String>(
          title: Text(option.option),
          value: optionId,
          groupValue: selectedSingleAnswer,
          onChanged: (String? value) {
            setState(() {
              selectedSingleAnswer = value;
            });
          },
        );
      }).toList(),
    );
  }

  Widget _buildFillInTheBlank(FillInTheBlank quiz) {
    return TextField(
      controller: fillInController,
      decoration: const InputDecoration(
        hintText: 'Enter your answer here',
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildTrueOrFalse(TrueOrFalse quiz) {
    return Column(
      children: [
        RadioListTile<bool>(
          title: const Text('True'),
          value: true,
          groupValue: selectedTrueOrFalse,
          onChanged: (bool? value) {
            setState(() {
              selectedTrueOrFalse = value;
            });
          },
        ),
        RadioListTile<bool>(
          title: const Text('False'),
          value: false,
          groupValue: selectedTrueOrFalse,
          onChanged: (bool? value) {
            setState(() {
              selectedTrueOrFalse = value;
            });
          },
        ),
      ],
    );
  }

  void _handleNextQuestion() {
    widget.quiz.map(
      multipleChoiceMultipleAnswers: (q) {
        print('Quiz ID: ${q.id}');
        print('Selected answers: $selectedMultipleAnswers');
        print('Correct answers: ${q.correctAnswers}');
        final answerSheet = AnswerSheet.multipleChoiceMultipleAnswers(
          quizId: q.id,
          selectedAnswers: selectedMultipleAnswers.toList(),
        );
        context.read<QuizBloc>().add(
          AnswerSheetUpdated(answerSheet: answerSheet),
        );
      },
      multipleChoiceSingleAnswer: (q) {
        print('Quiz ID: ${q.id}');
        print('Selected answer: $selectedSingleAnswer');
        print('Correct answer: ${q.correctAnswer}');
        final answerSheet = AnswerSheet.multipleChoiceSingleAnswer(
          quizId: q.id,
          selectedAnswer: selectedSingleAnswer!,
        );
        context.read<QuizBloc>().add(
          AnswerSheetUpdated(answerSheet: answerSheet),
        );
      },
      fillInTheBlank: (q) {
        print('Quiz ID: ${q.id}');
        print('Your answer: ${fillInController.text}');
        print('Correct answer: ${q.correctAnswer}');
        final answerSheet = AnswerSheet.fillInTheBlank(
          quizId: q.id,
          answer: fillInController.text.trim(),
        );
        context.read<QuizBloc>().add(
          AnswerSheetUpdated(answerSheet: answerSheet),
        );
      },
      trueOrFalse: (q) {
        print('Quiz ID: ${q.id}');
        print('Your answer: $selectedTrueOrFalse');
        print('Correct answer: ${q.correctAnswer}');
        final answerSheet = AnswerSheet.trueOrFalse(
          quizId: q.id,
          answer: selectedTrueOrFalse!,
        );
        context.read<QuizBloc>().add(
          AnswerSheetUpdated(answerSheet: answerSheet),
        );
      },
    );
    context.read<QuizBloc>().add(NextQuestionRequested());
    setState(() {
      selectedMultipleAnswers.clear();
      selectedSingleAnswer = null;
      fillInController.clear();
      selectedTrueOrFalse = null;
    });
  }
  bool get _isAnswered {
  return widget.quiz.map(
    multipleChoiceMultipleAnswers: (_) => selectedMultipleAnswers.isNotEmpty,
    multipleChoiceSingleAnswer: (_) => selectedSingleAnswer != null,
    fillInTheBlank: (_) => fillInController.text.trim().isNotEmpty,
    trueOrFalse: (_) => selectedTrueOrFalse != null,
  );
}

}
