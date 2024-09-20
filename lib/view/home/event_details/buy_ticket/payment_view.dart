import 'package:flutter/material.dart';
import 'package:twym_2024/widget/common_text_field.dart';

import '../../../../utils/common_colors.dart';
import '../../../../utils/common_utils.dart';
import '../../../../utils/constant.dart';
import '../../../../widget/common_appbar.dart';
import '../../../../widget/primary_button.dart';
import '../../../common_view/scaffold_bg.dart';
import 'ticket_view.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  final _formKey = GlobalKey<FormState>();

  @override
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: Scaffold(
        backgroundColor: CommonColors.mTransparent,
        appBar: CommonAppBar(
          title: 'Payment',
          iconTheme: IconThemeData(color: CommonColors.blackColor),
        ),
        body: SingleChildScrollView(
          padding: kCommonScreenPadding,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Debit/Credit card",
                  style: getAppStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                kCommonSpaceV15,
                Text(
                  "Account Holder",
                  style: getAppStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                CommonTextField(
                  hintText: "john robot",
                ),
                kCommonSpaceV15,
                Text(
                  "Account Number",
                  style: getAppStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                CommonTextField(
                  hintText: "1111 **** **** 1111",
                  // controller: emailController,
                ),
                kCommonSpaceV15,
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expiration Date (MM/YY)",
                            style: getAppStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          CommonTextField(
                            hintText: "12/26",
                            // controller: emailController,
                          ),
                        ],
                      ),
                    ),
                    kCommonSpaceH10,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CVV(3 digit)",
                            style: getAppStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          CommonTextField(
                            hintText: "***",
                            // controller: emailController,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                kCommonSpaceV30,
                PrimaryButton(
                    height: 50,
                    label: "SUBMIT",
                    lblSize: 20,
                    onPress: () {
                      push(TicketView());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
