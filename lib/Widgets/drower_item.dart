import 'package:dashboard/Widgets/active_and_inactive.dart';
import 'package:dashboard/models/drower_item_model.dart';
import 'package:flutter/material.dart';

class DrowerItem extends StatelessWidget {
  const DrowerItem({
    super.key,
    required this.drowerItemModel,
    required this.isActive,
  });

  final DrowerItemModel drowerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrowerItem(drowerItemModel: drowerItemModel)
        : InActiveDrowerItem(drowerItemModel: drowerItemModel);
  }
}
