import 'package:flutter/material.dart';

class ChangeEmailAddressView extends StatelessWidget {
  const ChangeEmailAddressView({super.key});

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
                ' Enter you current e-mail*',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 16),
              TextFormField(

                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                ' Enter you new e-mail*',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 16),
              TextFormField(

                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              Text(
                ' Confirm you new e-mail*',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 16),
              TextFormField(

                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
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
                      'Change',
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
