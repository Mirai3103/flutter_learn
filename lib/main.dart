import 'package:flutter/material.dart';
import 'package:flutter_learn/app.dart';
import 'package:flutter_learn/shareds/api_client/graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async{
  runApp(GraphQLProvider(
    child: const App(),
    client: client,
  ));
}
