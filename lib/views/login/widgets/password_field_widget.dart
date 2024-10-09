import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/login_bloc/login_bloc.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required FocusNode passwordFocusNode,
  }) : _passwordFocusNode = passwordFocusNode;

  final FocusNode _passwordFocusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (curr,prev)=> curr.password != prev.password,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.text,
          focusNode: _passwordFocusNode,
          obscureText: true,
          decoration: const InputDecoration(
              hintText: 'Password', border: OutlineInputBorder()),
          onChanged: (value) {
            context.read<LoginBloc>().add(PasswordChanged(password: value));
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter password';
            }
            if (value.length < 6) {
              return 'please enter password greater than 6 char';
            }
            return null;
          },
          onFieldSubmitted: (value) {},
        );
      },
    );
  }
}
