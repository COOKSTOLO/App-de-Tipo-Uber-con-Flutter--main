import 'package:flutter_application_1/src/presentation/Pages/Auth/Login/bloc/LoginBloc.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/Login/bloc/LoginEvent.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/register/Bloc/RegisterBloc.dart';
import 'package:flutter_application_1/src/presentation/Pages/Auth/register/Bloc/RegisterEvent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BlocProvider> BlocProviders = [
  BlocProvider<LoginBloc>(create: (context) => LoginBloc()..add(LoginInitEvent())),
  BlocProvider<RegisterBloc>(create: (context) => RegisterBloc()..add(RegisterInitEvent())),
];