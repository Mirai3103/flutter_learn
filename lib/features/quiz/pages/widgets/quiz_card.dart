import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn/features/quiz/bloc/quiz_bloc.dart';
import 'package:flutter_learn/features/quiz/bloc/quiz_event.dart';
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
              child: ElevatedButton(
                onPressed: _handleSubmit,
                child: const Text('Submit Answer'),
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

  void _handleSubmit() {
    widget.quiz.map(
      multipleChoiceMultipleAnswers: (q) {
        print('Quiz ID: ${q.id}');
        print('Selected answers: $selectedMultipleAnswers');
        print('Correct answers: ${q.correctAnswers}');
        final answerSheet = AnswerSheet.multipleChoiceMultipleAnswers(
          quizId: q.id,
          selectedAnswers: selectedMultipleAnswers.toList(),
          correctAnswers: q.correctAnswers,
        );
        final isCorrect = answerSheet.isCorrect;
        context.read<QuizBloc>().add(AnswerSubmitted(answerSheet: answerSheet));
        _showResult(isCorrect);
      },
      multipleChoiceSingleAnswer: (q) {
        print('Quiz ID: ${q.id}');
        print('Selected answer: $selectedSingleAnswer');
        print('Correct answer: ${q.correctAnswer}');
        final answerSheet = AnswerSheet.multipleChoiceSingleAnswer(
          quizId: q.id,
          selectedAnswer: selectedSingleAnswer!,
          correctAnswer: q.correctAnswer,
        );
        final isCorrect = answerSheet.isCorrect;
        context.read<QuizBloc>().add(AnswerSubmitted(answerSheet: answerSheet));
        _showResult(isCorrect);
      },
      fillInTheBlank: (q) {
        print('Quiz ID: ${q.id}');
        print('Your answer: ${fillInController.text}');
        print('Correct answer: ${q.correctAnswer}');
        final answerSheet = AnswerSheet.fillInTheBlank(
          quizId: q.id,
          answer: fillInController.text.trim(),
          correctAnswer: q.correctAnswer,
        );
        context.read<QuizBloc>().add(AnswerSubmitted(answerSheet: answerSheet));
        final isCorrect = answerSheet.isCorrect;
        _showResult(isCorrect);
      },
      trueOrFalse: (q) {
        print('Quiz ID: ${q.id}');
        print('Your answer: $selectedTrueOrFalse');
        print('Correct answer: ${q.correctAnswer}');
        final answerSheet = AnswerSheet.trueOrFalse(
          quizId: q.id,
          answer: selectedTrueOrFalse!,
          correctAnswer: q.correctAnswer,
        );
        context.read<QuizBloc>().add(AnswerSubmitted(answerSheet: answerSheet));
        final isCorrect = answerSheet.isCorrect;
        
        _showResult(isCorrect);
      },
    );
  }

  void _showResult(bool isCorrect) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(isCorrect ? 'Correct! ✓' : 'Incorrect ✗'),
        content: Text(
          isCorrect
              ? 'Great job! Your answer is correct.'
              : 'Sorry, that\'s not the right answer.',
        ),
        actions: [
          TextButton(
            onPressed: () => {
              setState(() {
                selectedMultipleAnswers.clear();
                selectedSingleAnswer = null;
                fillInController.clear();
                selectedTrueOrFalse = null;
              }),
              Navigator.pop(context),
              context.read<QuizBloc>().add(NextQuestionRequested()),
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
