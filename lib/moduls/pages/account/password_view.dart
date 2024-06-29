import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordView extends StatefulWidget {
  const PasswordView({super.key});

  @override
  _PasswordViewState createState() => _PasswordViewState();
}

class _PasswordViewState extends State<PasswordView> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Password',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter your current password*',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Enter your new password*',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              Text(
                'Confirm your new password*',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                ),
              ),
              const SizedBox(height: 16),
        
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadiusDirectional.circular(12),
                      color: const Color(0xFF090C9B),
                    ),
                    child: Text(
                      'Change password',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  onTap: () {
                    // Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
