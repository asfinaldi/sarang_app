import 'package:flutter/material.dart';
import 'package:sarang_app/src/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:sarang_app/src/features/likes_you/bloc/people_loved/people_loved_bloc.dart';
import 'package:sarang_app/src/app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/features/likes_you/bloc/explore_people/explore_people_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => ExplorePeopleBloc(),
        ),
        BlocProvider(
          create: (context) => PeopleLovedBloc(),
        ),
      ],
      child: const AppScreen(),
    );
  }
}
