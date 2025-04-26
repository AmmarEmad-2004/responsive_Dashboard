import 'package:dashboard_app/views/widgets/all_expenses_section.dart';
import 'package:dashboard_app/views/widgets/custom_drawer.dart';
import 'package:flutter/widgets.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: Column(
          children: [
            AllExpensesSection(),
            SizedBox(height: 24),

          ],
        ),),
      ],
    );
  }
}

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
