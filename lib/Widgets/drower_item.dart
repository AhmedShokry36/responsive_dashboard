import 'package:dashboard/models/drower_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrowerItem extends StatelessWidget {
  const DrowerItem({super.key, required this.drowerItemModel});

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
