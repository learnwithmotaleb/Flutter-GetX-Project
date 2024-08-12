import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Homepagekk extends StatefulWidget {
  const Homepagekk({super.key});

  @override
  State<Homepagekk> createState() => _HomepagekkState();
}

class _HomepagekkState extends State<Homepagekk> {

  final _formKey = GlobalKey<FormState>();
  final SecureStorage _secureStorage = SecureStorage();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  void initState() {
    super.initState();
    _loadSavedPassword();
  }

  Future<void> _loadSavedPassword() async {
    String? savedPassword = await _secureStorage.getPassword();
    if (savedPassword != null) {
      setState(() {
        _passwordController.text = savedPassword;
        _rememberMe = true;
      });
    }
  }

  void _onLogin() {
    if (_formKey.currentState!.validate()) {
      if (_rememberMe) {
        _secureStorage.savePassword(_passwordController.text);
      } else {
        _secureStorage.deletePassword();
      }
      // Handle login logic here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (bool? value) {
                      setState(() {
                        _rememberMe = value ?? false;
                      });
                    },
                  ),
                  Text('Remember Password'),
                ],
              ),
              ElevatedButton(
                onPressed: _onLogin,
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class SecureStorage {
  final _storage = FlutterSecureStorage();

  // Save the password
  Future<void> savePassword(String password) async {
    await _storage.write(key: 'password', value: password);
  }

  // Retrieve the password
  Future<String?> getPassword() async {
    return await _storage.read(key: 'password');
  }

  // Delete the password
  Future<void> deletePassword() async {
    await _storage.delete(key: 'password');
  }
}

