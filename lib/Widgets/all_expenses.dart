import 'package:dashboard/Widgets/all_expenses_header.dart';
import 'package:dashboard/Widgets/all_expenses_item.dart';
import 'package:dashboard/models/all_expenses_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Column(
        children: [
          AllExpensesHeader(),
          AllExpensesItem(
            itemModel: AllExpensesItemModel(
              image: Assets.imagesIncome,
              title: "Income",
              date: "April 2022",
              price: r"$20.129",
            ),
          ),
        ],
      ),
    );
  }
}
