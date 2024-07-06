import 'package:flutter/material.dart';

import 'change_email_address.dart';


class EmailAddressView extends StatelessWidget {
  const EmailAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Email Address',
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
                ' Your E-mail*',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 30,

              decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF090C9B)),

              ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 8.0),
                 child: const Text(
                   'moutaz789@gmail.com',style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.w500),
                 ),
               ),

            ),
              SizedBox(height: 16,),

              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadiusDirectional.circular(12),
                    color: const Color(0xFF090C9B),
                  ),
                  child: Text(
                    'Change E-mail',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChangeEmailAddressView()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
