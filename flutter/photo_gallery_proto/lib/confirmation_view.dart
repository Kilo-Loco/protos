import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_repository.dart';
import 'confirmation_cubit.dart';
import 'navigator_cubit.dart';

class ConfirmationView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ConfirmationViewState();
}

class _ConfirmationViewState extends State<ConfirmationView> {
  final _codeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20),
        child: BlocProvider<ConfirmationCubit>(
            create: (_) =>
                ConfirmationCubit(authRepo: context.read<AuthRepository>()),
            child: _confirmationPage()),
      ),
    );
  }

  Widget _confirmationPage() {
    return BlocListener<ConfirmationCubit, ConfirmationState>(
      listener: (context, state) {
        if (state == ConfirmationState.confirmFailed) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text('Failed to Confirmation'),
              ),
            );
        }
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _confirmationForm(),
          _showSignUpButton(),
        ],
      ),
    );
  }

  Widget _confirmationCodeField() {
    return TextFormField(
      controller: _codeController,
      validator: (value) {
        return value.length < 6 ? 'Invalid code' : null;
      },
      decoration: InputDecoration(
          hintText: 'Confirmation code', icon: Icon(Icons.security)),
    );
  }

  Widget _confirmationButton() {
    return BlocBuilder<ConfirmationCubit, ConfirmationState>(
      builder: (context, state) {
        return state == ConfirmationState.attemptingConfirm
            ? CircularProgressIndicator()
            : ElevatedButton(
                child: Text('Confirmation'),
                onPressed: () =>
                    BlocProvider.of<ConfirmationCubit>(context).confirm(
                  username: _codeController.text,
                ),
              );
      },
    );
  }

  Widget _confirmationForm() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _confirmationCodeField(),
          _confirmationButton(),
        ],
      ),
    );
  }

  Widget _showSignUpButton() {
    return TextButton(
      onPressed: () => context.read<NavigatorCubit>().showSignUp(),
      child: Text('Don\'t have an account? Sign up.'),
    );
  }
}
