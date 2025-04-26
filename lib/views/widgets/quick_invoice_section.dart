import 'package:dashboard_app/views/widgets/custom_background_container.dart';
import 'package:dashboard_app/views/widgets/latest_transaction_section.dart';
import 'package:dashboard_app/views/widgets/quick_invoice_form.dart';
import 'package:dashboard_app/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
