import 'package:flutter/material.dart';
import 'package:flutterexpenses240712/widgets/expense_list.dart';
import 'package:flutterexpenses240712/models/expense_model.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({super.key});

  @override
  State<ExpensesPage> createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  final List<ExpenseModel> _registerdExpenses = [
    ExpenseModel(
      title: 'Flutter course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    ExpenseModel(
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.etc,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: ExpenseList(expense: _registerdExpenses),
          ),
        ],
      ),
    );
  }
}
