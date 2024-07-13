import 'package:flutter/material.dart';
import 'package:flutterexpenses240712/models/expense_model.dart';
import 'package:flutterexpenses240712/widgets/expense_item.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({
    super.key,
    required this.expense,
  });

  final List<ExpenseModel> expense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expense.length,
      itemBuilder: (ctx, index) => ExpenseItem(
        expenseModel: expense[index],
      ),
    );
  }
}
