import 'package:bloc_clean_coding/utils/extensions/flush_bar_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/login_bloc/login_bloc.dart';
import '../../../config/components/loading_widget.dart';
import '../../../config/components/round_button.dart';
import '../../../config/routes/routes_name.dart';
import '../../../utils/enums.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (current, previous) =>
          current.postApiStatus != previous.postApiStatus,
      listener: (context, state) {
        if (state.postApiStatus == PostApiStatus.error) {
          context.flushBarShowErrorMessage(message: state.error);
        }

        if (state.postApiStatus == PostApiStatus.success) {
          Navigator.pushNamedAndRemoveUntil(
              context, RoutesName.homeScreen, (route) => false);
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (current, previous) =>
              current.postApiStatus != previous.postApiStatus,
          builder: (context, state) {
            return RoundButton(
              title: 'Login',
              onPress: () {
                if (_formKey.currentState!.validate()) {
                  context.read<LoginBloc>().add(LoginApi());
                }
              },
              isLoading: state.postApiStatus == PostApiStatus.loading,
            );
          }),
    );
  }
}
