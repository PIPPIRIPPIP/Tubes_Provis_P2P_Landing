import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:myapp/screens/screens.dart';
import 'package:myapp/services/services.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';
import '../utils/utils.dart';
import '../providers/providers.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  late TextEditingController _namaController;
  late TextEditingController _nomorPonselController;
  late TextEditingController _jenisUserController;

  /// Call this if Sign-Up via backend-API successfully
  Future<void> _signUpSuccess(User userData) async {
    bool isSaveSuccess =
        await LocalStoreServices.saveInLocal(context, userData.token);
    if (isSaveSuccess) {
      if (!mounted) return;
      // NOTE : Update UserProvider
      UserProvider userProvider =
          Provider.of<UserProvider>(context, listen: false);
      userProvider.setUserFromModel(userData);
    }
  }

  /// Trigger this when "Sign Up" button is clicked
  void _signUp() async {
    if (_passwordController.text != _confirmPasswordController.text) {
      Utils.showSnackBar(
          context, 'Password and Confirm-Passord does not match!');
      return;
    }

    // NOTE : If signing-up failed, return null
    User? userAccount = await AuthService.signUpUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
      nama: _namaController.text,
      nomorPonsel: _nomorPonselController.text,
      jenisUser: "a",
    );

    if (userAccount != null) {
      // NOTE : Process, if Sign-Up via API successfully
      await _signUpSuccess(userAccount);
    }
  }

  /// Change to SignIn Page
  void _changeToSignIn() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignInPage()),
    );
  }

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _namaController = TextEditingController();
    _nomorPonselController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _namaController.dispose();
    _nomorPonselController.dispose();
    // _jenisUserController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Sign-up an account", style: TextStyle(fontSize: 28)),
            const SizedBox(height: 30),
            CustomTextField(
                controller: _emailController, hintText: "Type Email"),
            const SizedBox(height: 15),
            CustomTextField(
                controller: _passwordController, hintText: "Type Password"),
            const SizedBox(height: 15),
            CustomTextField(controller: _namaController, hintText: "Type Nama"),
            const SizedBox(height: 15),
            CustomTextField(
                controller: _nomorPonselController,
                hintText: "Type nomorPonsel"),
            const SizedBox(height: 15),
            CustomTextField(
                controller: _confirmPasswordController,
                hintText: "Confirm Password"),
            const SizedBox(height: 30),
            CustomElevatedButton(onPressfunc: _signUp, buttonText: 'Sign Up'),
            const SizedBox(height: 10),
            TextButton(
              onPressed: _changeToSignIn,
              child: const Text(
                'go to Login user',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
