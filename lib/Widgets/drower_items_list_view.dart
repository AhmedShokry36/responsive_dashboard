import 'package:dashboard/Widgets/drower_item.dart';
import 'package:dashboard/models/drower_item_model.dart' show DrowerItemModel;
import 'package:dashboard/utils/app_images.dart';
import 'package:flutter/material.dart';

class DrowerItemsListView extends StatefulWidget {
  const DrowerItemsListView({super.key});

  @override
  State<DrowerItemsListView> createState() => _DrowerItemsListViewState();
}

class _DrowerItemsListViewState extends State<DrowerItemsListView> {
  int activeIndex = 0;
  final List<DrowerItemModel> items = [
    DrowerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    DrowerItemModel(image: Assets.imagesMyTransctions, title: "Transctions"),
    DrowerItemModel(image: Assets.imagesStatistics, title: "Statistics"),
    DrowerItemModel(image: Assets.imagesWalletAccount, title: "Wallet Account"),
    DrowerItemModel(image: Assets.imagesMyInvestments, title: "My Investments"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
                //     print(activeIndex);
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrowerItem(
              drowerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
