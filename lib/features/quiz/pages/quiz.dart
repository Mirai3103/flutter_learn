import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn/features/quiz/bloc/quiz_bloc.dart';
import 'package:flutter_learn/features/quiz/bloc/quiz_event.dart';
import 'package:flutter_learn/features/quiz/bloc/quiz_state.dart';
import 'package:flutter_learn/features/quiz/pages/widgets/quiz_card.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        actions: [
          BlocBuilder<QuizBloc, QuizState>(
            builder: (context, state) {
              if (state is QuizSession) {
                return Row(
                  spacing: 20,
                  children: [
                    Text('${state.currentIndex + 1} / ${state.quizzes.length}'),
                    Text(
                      '${state.remainingSeconds}',
                    ),
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
      body: BlocConsumer<QuizBloc, QuizState>(
        builder: (context, state) {
          if (state is QuizSession) {
            if (state.answerSheets.length == state.quizzes.length) {
              return Column(
                children: [
                  TextButton(
                    onPressed: () =>
                        context.read<QuizBloc>().add(QuizSessionSubmitted()),
                    child: Text('Submit Quiz'),
                  ),
                  TextButton(
                    onPressed: () =>
                        context.read<QuizBloc>().add(NextQuestionRequested()),
                    child: Text('Next Question'),
                  ),
                ],
              );
            }
            return Column(
              children: [QuizCard(quiz: state.quizzes[state.currentIndex])],
            );
          }
          if (state is QuizInitial) {
            return Column(children: [_buildQuizStartCard(context)]);
          }
          if (state is QuizLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is QuizFetchingError) {
            return Center(child: Text(state.message));
          }
          if (state is QuizCompleted) {
            return Column(
              children: [
                Text('Quiz Completed'),
                Text('Score: ${state.correctAnswers} / ${state.totalAnswers}'),
                FilledButton(onPressed: () => context.read<QuizBloc>().add(QuizSessionSubmitted()), child: Text('Restart'))
              ],
            );
          }
          return const SizedBox.shrink();
        },
        listener: (context, state) {
          if (state is QuizSessionTimeout) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Quiz Timeout'),
                content: Text('Quiz has timed out'),
                actions: [
                  TextButton(
                    onPressed: () => {
                      context.read<QuizBloc>().add(QuizSessionSubmitted()),
                    },
                    child: Text('OK'),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildQuizStartCard(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('Quiz'),
          FilledButton(
            onPressed: () => context.read<QuizBloc>().add(
              SessionStarted(numberOfQuestions: 5),
            ),
            child: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
