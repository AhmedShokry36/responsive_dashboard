import 'package:dashboard/models/drower_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveDrowerItem extends StatelessWidget {
  const InActiveDrowerItem({super.key, required this.drowerItemModel});

  final DrowerItemModel drowerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drowerItemModel.image),
      title: Text(
        drowerItemModel.title,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}

class ActiveDrowerItem extends StatelessWidget {
  const ActiveDrowerItem({super.key, required this.drowerItemModel});

  final DrowerItemModel drowerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drowerItemModel.image),
      title: Text(drowerItemModel.title, style: AppStyles.styleBold16(context)),
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(color: Color(0xff4eb7f2)),
      ),
    );
  }
}
