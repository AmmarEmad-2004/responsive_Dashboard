import 'package:dashboard_app/views/widgets/allexpnese_and_quick_invoice_section.dart';
import 'package:dashboard_app/views/widgets/income_section.dart';
import 'package:dashboard_app/views/widgets/my_card_and_transaction_history_section.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Expanded(child: AllExpensessAndQuickInvoiceSection()),
          SizedBox(height: 24),
          Column(
            children: [
              MyCardAndTransactionHistorySection(),
              SizedBox(height: 24),
              Expanded(child: IncomeSection()),
            ],
          ),
        ],
      ),
    );
  }
}
