import 'package:dashboard/Widgets/drower_item.dart';
import 'package:dashboard/Widgets/user_info_listtile.dart';
import 'package:dashboard/models/drower_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrowerItemModel> items = [
    DrowerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    DrowerItemModel(image: Assets.imagesMyTransctions, title: "Transctions"),
    DrowerItemModel(image: Assets.imagesStatistics, title: "Statistics"),
    DrowerItemModel(image: Assets.imagesWalletAccount, title: "Wallet Account"),
    DrowerItemModel(image: Assets.imagesMyInvestments, title: "My Investments"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: "Lekan",
            subtitle: "demo@gmail.com",
          ),
          SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: DrowerItem(drowerItemModel: items[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
