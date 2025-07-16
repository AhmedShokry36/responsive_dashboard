import 'package:dashboard/Widgets/active_and_inactive.dart';
import 'package:dashboard/Widgets/user_info_listtile.dart';
import 'package:dashboard/models/drower_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:flutter/material.dart';

import 'drower_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

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
          DrowerItemsListView(),
          Expanded(child: SizedBox()),
          InActiveDrowerItem(
            drowerItemModel: DrowerItemModel(
              image: Assets.imagesSettings,
              title: "Setting system ",
            ),
          ),
          InActiveDrowerItem(
            drowerItemModel: DrowerItemModel(
              image: Assets.imagesLogout,
              title: "Logout",
            ),
          ),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}
