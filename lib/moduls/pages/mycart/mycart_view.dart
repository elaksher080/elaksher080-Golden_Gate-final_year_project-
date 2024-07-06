import 'package:flutter/material.dart';

import '../../register/sign_up.dart';
import 'check_out.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "My Cart",
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: 35,),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  CartItem(
                    title: 'Flutter&Dart (The Complete Guide)',
                    subtitle1: 'Hossam Mostafa',
                    subtitle2: '459 EGP',
                    imagePath: 'assets/photos/Group 16.png',
                  ),
                  CartItem(
                    title: 'Machine Learning A-Z course',
                    subtitle1: 'Mostafa Mohamed',
                    subtitle2: '559 EGP',
                    imagePath: 'assets/photos/Group 16.png',
                  ),
                  // Add more CartItem instances with different values as needed
                ],
              ),

              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        cursorHeight: 30,
                        style: theme.textTheme.bodyMedium,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Color(0xFFB6A168)),
                          ),
                          prefixIcon: Icon(
                            Icons.local_offer_outlined,
                            color: Color(0xFFB6A168),
                            size: 28,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyCartView()),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color(0xFFB6A168),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color(0xFFB6A168),
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Apply",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SummaryRow(label: 'Subtotal', amount: '459 EGP'),
                    SummaryRow(label: 'Discount', amount: '-100 EGP'),
                    Divider(),
                    SummaryRow(label: 'Total', amount: '359 EGP', isBold: true),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  // Handle checkout
                },
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CheckOut()),
                    );
                  },
                  child: Text(
                    'Check Out',
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff090C9B),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CartItem extends StatefulWidget {
  final String title;
  final String subtitle1;
  final String subtitle2;
  final String imagePath;

  CartItem({
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    required this.imagePath,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(8),
      ),
      child: CheckboxListTile(
        value: _isSelected,
        onChanged: (bool? value) {
          setState(() {
            _isSelected = value ?? false;
          });
        },
        title: Text(
          widget.title,
          style: theme.textTheme.bodyLarge?.copyWith(
            fontSize: 20,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 110),
              child: Text(
                widget.subtitle1,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 110),
              child: Text(
                widget.subtitle2,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        secondary: Image.asset(widget.imagePath),
      ),
    );
  }
}


class SummaryRow extends StatelessWidget {
  final String label;
  final String amount;
  final bool isBold;

  SummaryRow({required this.label, required this.amount, this.isBold = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
