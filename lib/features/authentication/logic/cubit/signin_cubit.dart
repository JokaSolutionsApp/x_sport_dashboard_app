import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_sport_dashboard_app/features/authentication/logic/cubit/signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(const SigninState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const SigninState.loading());
    await Future.delayed(Durations.extralong4);
    emit(const SigninState.success(true));
  }
}
