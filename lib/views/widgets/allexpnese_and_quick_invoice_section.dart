
import 'package:dashboard_app/views/widgets/all_expenses_section.dart';
import 'package:dashboard_app/views/widgets/quick_invoice_section.dart';
import 'package:flutter/widgets.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpensesSection(),
        SizedBox(height: 24),
        QuickInvoiceSection(),
      ],
    );
  }
}