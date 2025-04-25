import 'package:dashboard_app/models/drawer_item_model.dart';
import 'package:dashboard_app/utils/app_images.dart';
import 'package:dashboard_app/views/widgets/drawer_item.dart';
import 'package:flutter/widgets.dart';

class CustomDrawerItemsList extends StatefulWidget {
  const CustomDrawerItemsList({super.key});

  @override
  State<CustomDrawerItemsList> createState() => _CustomDrawerItemsListState();
}

class _CustomDrawerItemsListState extends State<CustomDrawerItemsList> {
  final List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', imageUrl: AppImages.imagesDashboard),
    DrawerItemModel(
      title: 'My Transaction',
      imageUrl: AppImages.imagesConvertCard,
    ),
    DrawerItemModel(title: 'Statistics', imageUrl: AppImages.imagesGraph),
    DrawerItemModel(title: 'Wallet Account', imageUrl: AppImages.imagesWallet2),
    DrawerItemModel(title: 'My Investments', imageUrl: AppImages.imagesChart2),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              item: items[index],
              isSelected: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
