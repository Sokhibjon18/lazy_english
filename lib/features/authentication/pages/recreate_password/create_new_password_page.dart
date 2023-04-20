import 'package:flutter/material.dart';
import 'package:lazy_english/features/authentication/pages/recreate_password/complete_resetting_password.dart';
import 'package:lazy_english/features/authentication/pages/recreate_password/widgets/create_password_textfield.dart';

class CreateNewPasswordForSignIn extends StatefulWidget {
  const CreateNewPasswordForSignIn({super.key});

  @override
  State<CreateNewPasswordForSignIn> createState() =>
      _CreateNewPasswordForSignInState();
}

bool isVisible = false;
bool checkIsVisible = false;
bool isChecked = false;

class _CreateNewPasswordForSignInState
    extends State<CreateNewPasswordForSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                const SizedBox(height: 40),
                const Text(
                  'Create new password 🔐',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Save the new password in a safe place, if you forget it then you have to do a forgot password again.',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 32),
                const Text(
                  'Create a new password',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                CreatePasswordTextfield(isVisible: isVisible),
                const SizedBox(height: 32),
                const Text(
                  'Confirm a new password',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                CreatePasswordTextfield(isVisible: isChecked),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      activeColor: const Color(0xFF6949FF),
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                    const Text(
                      'Remember me',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Divider(color: Colors.grey.withOpacity(0.6)),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 32, left: 24, right: 24, top: 24),
                child: SizedBox(
                  width: double.infinity,
                  height: 58,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const CompleteResettingPasswordPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6949FF),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text('Continue'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
