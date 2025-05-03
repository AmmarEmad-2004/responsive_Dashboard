import 'package:dashboard_app/views/widgets/allexpnese_and_quick_invoice_section.dart';
import 'package:dashboard_app/views/widgets/custom_drawer.dart';
import 'package:dashboard_app/views/widgets/income_section.dart';
import 'package:dashboard_app/views/widgets/my_card_and_transaction_history_section.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  AllExpensessAndQuickInvoiceSection(),
                  SizedBox(height: 24),
                  MyCardAndTransactionHistorySection(),
                  SizedBox(height: 24),
                  IncomeSection(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}
