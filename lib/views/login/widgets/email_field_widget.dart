import 'package:bloc_clean_coding/utils/extensions/validations_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/login_bloc/login_bloc.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    required FocusNode emailFocusNode,
  }) : _emailFocusNode = emailFocusNode;

  final FocusNode _emailFocusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (curr, prev) => prev.email != curr.email,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.emailAddress,
          focusNode: _emailFocusNode,
          decoration: const InputDecoration(
              hintText: 'Email', border: OutlineInputBorder()),
          onChanged: (value) {
            context.read<LoginBloc>().add(EmailChanged(email: value));
          },
          textInputAction: TextInputAction.next,
          validator: (value) {
            if(value!.isEmpty){
              return 'Enter Email';
            }

            if (!value.emailValidator()) {
              return 'Email is not correct';
            }

            return null;
          },
          onFieldSubmitted: (value) {},
        );
      },
    );
  }
}
