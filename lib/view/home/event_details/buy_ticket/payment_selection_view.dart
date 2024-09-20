import 'package:flutter/material.dart';
import 'package:twym_2024/view/home/event_details/buy_ticket/payment_view.dart';

import '../../../../utils/common_colors.dart';
import '../../../../utils/common_utils.dart';
import '../../../../widget/common_appbar.dart';
import '../../../../widget/primary_button.dart';
import '../../../common_view/scaffold_bg.dart';

class PaymentSelectionView extends StatefulWidget {
  const PaymentSelectionView({super.key});

  @override
  State<PaymentSelectionView> createState() => _PaymentSelectionViewState();
}

class _PaymentSelectionViewState extends State<PaymentSelectionView> {
  String? selectedPaymentMethod; // Correctly scoped here

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: Scaffold(
        backgroundColor: CommonColors.mTransparent,
        appBar: CommonAppBar(
          title: 'Payment',
          iconTheme: IconThemeData(color: Colors.black),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15.0),
          child: PrimaryButton(
            height: 50,
            label: "CONTINUE",
            lblSize: 20,
            onPress: () {
              push(PaymentView());
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Payment Method',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Add New Card',
                      style: TextStyle(
                          color: CommonColors.primaryColor, fontSize: 15),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              PaymentOption(
                icon: Icons.apple,
                title: 'Apple Pay',
                value: 'Apple Pay',
                groupValue: selectedPaymentMethod, // Using the state property
                onChanged: (value) {
                  setState(() {
                    selectedPaymentMethod = value;
                  });
                },
              ),
              SizedBox(height: 16),
              PaymentOption(
                icon: Icons.paypal,
                title: 'PayPal',
                value: 'PayPal',
                groupValue: selectedPaymentMethod, // Using the state property
                onChanged: (value) {
                  setState(() {
                    selectedPaymentMethod = value;
                  });
                },
              ),
              SizedBox(height: 16),
              PaymentOption(
                icon: Icons.credit_card,
                title: 'Debit/ Credit Card',
                value: 'Debit/Credit Card',
                groupValue: selectedPaymentMethod, // Using the state property
                onChanged: (value) {
                  setState(() {
                    selectedPaymentMethod = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final String? groupValue;
  final ValueChanged<String?> onChanged;

  PaymentOption({
    required this.icon,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, size: 32, color: CommonColors.primaryColor),
        title: Text(title),
        trailing: Radio<String>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: CommonColors.primaryColor,
        ),
        onTap: () => onChanged(value),
      ),
    );
  }
}
