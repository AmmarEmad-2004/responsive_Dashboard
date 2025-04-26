import 'package:dashboard_app/models/all_expenses_model.dart';
import 'package:dashboard_app/utils/app_images.dart';
import 'package:dashboard_app/views/widgets/all_expenses_item.dart';
import 'package:flutter/widgets.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

class _AllExpensesBodyState extends State<AllExpensesBody> {
  final List<AllExpensesModel> items = [
    AllExpensesModel(
      image: AppImages.imagesMoneys,
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
  int selectedIndex = 0;
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
              child: GestureDetector(
                onTap: () {
                  if (selectedIndex != index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  }
                },
                child: Padding(
                  padding:
                      index == 1
                          ? const EdgeInsets.symmetric(horizontal: 12)
                          : EdgeInsets.zero,
                  child: AllExpensesItem(
                    item: item,
                    isSelected: selectedIndex == index,
                  ),
                ),
              ),
            );
          }).toList(),
    );
  }
}
