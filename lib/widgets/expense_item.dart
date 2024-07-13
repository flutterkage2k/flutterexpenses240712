import 'package:flutter/material.dart';
import 'package:flutterexpenses240712/models/expense_model.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expenseModel});

  final ExpenseModel expenseModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expenseModel.title),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text('\$${expenseModel.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      categoryIcons[expenseModel.category],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      expenseModel.formattedDate,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
