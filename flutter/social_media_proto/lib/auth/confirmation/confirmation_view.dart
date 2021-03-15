import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/auth/auth_cubit.dart';
import 'package:social_media_proto/auth/confirmation/confirmation_state.dart';
import 'package:social_media_proto/auth/form_submission_status.dart';
import '../auth_repository.dart';
import 'confirmation_bloc.dart';
import 'confirmation_event.dart';

class ConfirmationView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ConfirmationBloc(
          authRepo: context.read<AuthRepository>(),
          authCubit: context.read<AuthCubit>(),
        ),
        child: _loginForm(),
      ),
    );
  }

  Widget _loginForm() {
    return BlocListener<ConfirmationBloc, ConfirmationState>(
      listener: (context, state) {
        final formStatus = state.formStatus;
        if (formStatus is SubmissionFailed) {
          _showSnackBar(context, formStatus.exception.toString());
        }
      },
      child: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _confirmationCodeField(),
              _loginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _confirmationCodeField() {
    return BlocBuilder<ConfirmationBloc, ConfirmationState>(
      builder: (context, state) {
        return TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.security),
            hintText: 'Confirmation Code',
          ),
          onChanged: (value) => context
              .read<ConfirmationBloc>()
              .add(ConfirmationCodeChanged(code: value)),
          validator: (_) =>
              !state.isValidCode ? 'Your username is too short' : null,
        );
      },
    );
  }

  Widget _loginButton() {
    return BlocBuilder<ConfirmationBloc, ConfirmationState>(
        builder: (context, state) {
      return state.formStatus is FormSubmitting
          ? CircularProgressIndicator()
          : ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  context.read<ConfirmationBloc>().add(ConfirmationSubmitted());
                }
              },
            );
    });
  }

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
