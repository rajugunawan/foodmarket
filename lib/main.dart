import 'package:flutter/material.dart';
import 'package:tested/cubit/cubit.dart';
import 'package:tested/cubit/user_cubit.dart';
import 'package:tested/ui/pages/pages.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()
{
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => UserCubit()),
            BlocProvider(create: (_) => FoodCubit()),
            BlocProvider(create: (_) => TransactionCubit()),
          ],
          child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: SignInPage(),
      ),
    );
  }
}