import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/inherited_authenticator_state.dart';
import 'package:amplify_authenticator/src/widgets/form.dart';
import 'package:flutter/material.dart';

class AuthenticatorTotpSetupStepper<T extends AuthenticatorForm>
    extends AuthenticatorFormState<T> {
  int _index = 0;

  void nextStep() {
    setState(() {
      _index += 1;
    });
  }

  void prevStep() {
    setState(() {
      _index -= 1;
    });
  }

  void setStep(int val) {
    setState(() {
      _index = val;
    });
  }

  String getButtonText(ButtonResolverKey key) {
    return stringResolver.buttons.resolve(
      context,
      key,
    );
  }

  @override
  Widget build(BuildContext context) {
    final formKey = InheritedAuthenticatorState.of(context).formKey;
    return Form(
      key: formKey,
      child: Column(
        children: [
          Stepper(
            currentStep: _index,
            onStepCancel: prevStep,
            onStepContinue: nextStep,
            onStepTapped: setStep,
            steps: <Step>[
              Step(
                title:
                    Text(getButtonText(ButtonResolverKey.totpStepperAppSetup)),
                content: Column(
                  children: [
                    ConfirmSignInFormField.openTotpAppButton(),
                    ConfirmSignInFormField.totpSetup(),
                  ],
                ),
              ),
              Step(
                title:
                    Text(getButtonText(ButtonResolverKey.totpStepperConfirm)),
                content: Column(
                  children: [
                    ConfirmSignInFormField.verificationCode(),
                  ],
                ),
              ),
            ],
            controlsBuilder: (
              BuildContext context,
              ControlsDetails controlsDetails,
            ) {
              return Row(
                children: <Widget>[
                  if (_index == 0)
                    FilledButton(
                      key: keyContinueTotpStepperButton,
                      onPressed: controlsDetails.onStepContinue,
                      child: const Text('Continue'),
                    ),
                  if (_index == 1)
                    TextButton(
                      onPressed: controlsDetails.onStepCancel,
                      child: const Text('Back'),
                    ),
                  if (_index == 1)
                    const SizedBox(
                      width: 100,
                      child: ConfirmSignInMFAButton(
                        key: keyConfirmTotpStepperButton,
                      ),
                    ),
                ],
              );
            },
          ),
          const BackToSignInButton(),
        ],
      ),
    );
  }
}