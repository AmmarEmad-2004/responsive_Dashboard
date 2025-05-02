import 'package:dashboard_app/views/widgets/allexpnese_and_quick_invoice_section.dart';

import 'package:dashboard_app/views/widgets/custom_drawer.dart';
import 'package:dashboard_app/views/widgets/income_section.dart';
import 'package:dashboard_app/views/widgets/my_card_and_transaction_history_section.dart';

import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: AllExpensessAndQuickInvoiceSection(),
                      ),
                      SizedBox(width: 24),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 32),
                          child: Column(
                            children: [
                              MyCardAndTransactionHistorySection(),
                              SizedBox(height: 24),
                              Expanded(child: IncomeSection()),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
