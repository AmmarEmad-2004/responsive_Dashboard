import 'package:dashboard_app/models/all_expenses_model.dart';
import 'package:dashboard_app/utils/app_images.dart';
import 'package:dashboard_app/views/widgets/all_expenses_body_item.dart';
import 'package:dashboard_app/views/widgets/all_expenses_header.dart';
import 'package:flutter/material.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              children: [
                AllExpensesHeader(),
                SizedBox(height: 16),
                AllExpensesBody(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AllExpensesBody extends StatelessWidget {
  const AllExpensesBody({super.key});
  static const List<AllExpensesModel> items = [
    AllExpensesModel(
      image: AppImages.imagesCardReceive,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesModel(
      image: AppImages.imagesCardReceive,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesModel(
      image: AppImages.imagesCardSend,
      title: 'Expense',
      date: 'April 2022',
      price: r'$5,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      // children:
      //     items
      //         .map((e) => Expanded(child: AllExpensesBodyItem(itemModel: e)))
      //         .toList(),
      children:
          items.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;
            return Expanded(
              child: Padding(
                padding:
                    index == 1
                        ? const EdgeInsets.symmetric(horizontal: 12)
                        : EdgeInsets.zero,
                child: AllExpensesBodyItem(itemModel: item),
              ),
            );
          }).toList(),
    );
  }
}
