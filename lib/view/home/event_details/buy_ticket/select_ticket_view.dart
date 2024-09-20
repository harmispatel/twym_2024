import 'package:flutter/material.dart';
import 'package:twym_2024/utils/constant.dart';
import 'package:twym_2024/view/common_view/scaffold_bg.dart';
import 'package:twym_2024/view/home/event_details/buy_ticket/payment_selection_view.dart';

import '../../../../utils/common_colors.dart';
import '../../../../utils/common_utils.dart';
import '../../../../widget/common_appbar.dart';
import '../../../../widget/common_text_field.dart';
import '../../../../widget/primary_button.dart';

class SelectTicketView extends StatefulWidget {
  @override
  SelectTicketViewState createState() => SelectTicketViewState();
}

class SelectTicketViewState extends State<SelectTicketView> {
  int seatCount = 1;
  bool isGoldTicket = true;
  final double ticketPrice = 150.0;
  final double taxRate = 0.0725;
  String voucherCode = '';

  void incrementSeat() {
    setState(() {
      seatCount++;
    });
  }

  void decrementSeat() {
    if (seatCount > 1) {
      setState(() {
        seatCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: Scaffold(
        backgroundColor: CommonColors.mTransparent,
        appBar: CommonAppBar(
          title: 'Ticket',
          iconTheme: IconThemeData(color: CommonColors.blackColor),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Ticket type',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                kCommonSpaceV20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ToggleButtons(
                      borderRadius: BorderRadius.circular(30),
                      borderColor: CommonColors.appPinkColor,
                      isSelected: [isGoldTicket, !isGoldTicket],
                      selectedColor: Colors.white,
                      color: CommonColors.appPinkColor,
                      selectedBorderColor: CommonColors.appPinkColor,
                      fillColor: CommonColors.appPinkColor,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Text(
                            'GOLD TICKET',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Text(
                            'SILVER TICKET',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        ),
                      ],
                      onPressed: (index) {
                        setState(() {
                          isGoldTicket = index == 0;
                        });
                      },
                    ),
                  ],
                ),
                kCommonSpaceV30,
                Text(
                  "Seat",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                kCommonSpaceV20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        decrementSeat();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: CommonColors.primaryColor.withOpacity(0.3),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.fromBorderSide(
                                BorderSide(color: CommonColors.primaryColor))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.remove,
                            color: CommonColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    kCommonSpaceH15,
                    Text(
                      seatCount.toString(),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    kCommonSpaceH15,
                    InkWell(
                      onTap: () {
                        incrementSeat();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: CommonColors.primaryColor.withOpacity(0.3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border: Border.fromBorderSide(
                            BorderSide(color: CommonColors.primaryColor),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add,
                            color: CommonColors.primaryColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                kCommonSpaceV30,
                kCommonSpaceV30,
                Text(
                  "Ticket Price",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                kCommonSpaceV20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "VIP Ticket",
                      style: TextStyle(color: CommonColors.mGrey, fontSize: 16),
                    ),
                    Text(
                      "\$150 USD",
                      style: TextStyle(color: CommonColors.mGrey, fontSize: 16),
                    )
                  ],
                ),
                kCommonSpaceV15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Spacer(),
                    Text(
                      "3 x \$150 USD",
                      style: TextStyle(color: CommonColors.mGrey, fontSize: 16),
                    )
                  ],
                ),
                kCommonSpaceV5,
                Divider(
                  color: CommonColors.mGrey300,
                ),
                kCommonSpaceV5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Spacer(),
                    Text(
                      "Sub Total",
                      style: TextStyle(
                          color: CommonColors.blackColor, fontSize: 18),
                    ),
                    kCommonSpaceH15,
                    kCommonSpaceH15,
                    kCommonSpaceH15,
                    Text(
                      "\$450 USD",
                      style: TextStyle(
                          color: CommonColors.blackColor, fontSize: 18),
                    )
                  ],
                ),
                kCommonSpaceV5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Spacer(),
                    Text(
                      "+ Sales tax (7.25%):",
                      style: TextStyle(color: CommonColors.mGrey, fontSize: 16),
                    ),
                    kCommonSpaceH15,
                    kCommonSpaceH15,
                    kCommonSpaceH15,
                    Text(
                      "\$32.65 USD",
                      style: TextStyle(color: CommonColors.mGrey, fontSize: 16),
                    )
                  ],
                ),
                kCommonSpaceV5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Spacer(),
                    Text(
                      "Sub Total",
                      style: TextStyle(
                          color: CommonColors.appPinkColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    kCommonSpaceH15,
                    kCommonSpaceH15,
                    kCommonSpaceH15,
                    Text(
                      "\$417.38 USD",
                      style: TextStyle(
                          color: CommonColors.appPinkColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                kCommonSpaceV30,
                kCommonSpaceV10,
                Row(
                  children: [
                    Expanded(
                      child: CommonTextField(
                        hintText: "Voucher Code",
                        // controller: emailController,
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                CommonColors.appPinkColor.withOpacity(0.5),
                                CommonColors.appPinkColor,
                              ],
                              stops: [
                                0.0,
                                1.0
                              ],
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                              tileMode: TileMode.repeated)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 25, left: 25),
                          child: Text(
                            "Apply",
                            overflow: TextOverflow.ellipsis,
                            style: getAppStyle(
                                color: CommonColors.mWhite, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                kCommonSpaceV30,
                kCommonSpaceV30,
                kCommonSpaceV30,
                PrimaryButton(
                    height: 50,
                    label: "CONTINUE",
                    lblSize: 20,
                    onPress: () {
                      push(PaymentSelectionView());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
