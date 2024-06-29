import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
   CheckOut({super.key});

  static const String routeName = "checkout";

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed:(){
            Navigator.pop(context);
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                'Payment method',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'E-mail address',
                  hintText: 'E-mail address',
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Card Number',
                  hintText: '0000/0000/0000/0000',
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Expiry date',
                        hintText: 'MM / YY',
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'CVC',
                        hintText: '000',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Cardholder name',
                  hintText: 'Cardholder name',
                ),
              ),
              SizedBox(height: 32),
              Center(
                child: GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      // Add form submission functionality here
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    decoration: BoxDecoration(
                      color: Colors.brown, // You can change the color to match the image
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Confirm & Continue',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}