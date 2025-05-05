import 'package:dashboard_app/views/widgets/allexpnese_and_quick_invoice_section.dart';
import 'package:dashboard_app/views/widgets/income_section.dart';
import 'package:dashboard_app/views/widgets/my_card_and_transaction_history_section.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;

    return SingleChildScrollView(
      child: Padding(
        padding: width > 800 ? const EdgeInsets.only(top: 40) : EdgeInsets.zero,
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
    );
  }
}
