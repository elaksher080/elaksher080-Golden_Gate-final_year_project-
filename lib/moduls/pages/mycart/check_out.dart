import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  CheckOut({super.key});

  static const String routeName = "checkout";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                _buildTextFormField('E-mail address', 'E-mail address'),
                SizedBox(height: 16),
                _buildTextFormField('Card Number', '0000/0000/0000/0000'),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: _buildTextFormField('Expiry date', 'MM / YY'),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: _buildTextFormField('CVC', '000'),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                _buildTextFormField('Cardholder name', 'Cardholder name'),
                SizedBox(height: 32),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Success'),
                              content: Text('The operation was completed successfully.'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.pushReplacementNamed(context, '/nextPage'); // Replace '/nextPage' with your target route name
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
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
      ),
    );
  }

  Widget _buildTextFormField(String labelText, String hintText) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
