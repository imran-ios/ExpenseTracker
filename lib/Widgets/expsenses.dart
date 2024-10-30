import 'package:expense_tracker/Models/expense.dart';
import 'package:expense_tracker/Widgets/expense/expenses_list.dart';
import 'package:flutter/material.dart';

import 'expense/add_new_expense.dart';

class Expsenses extends StatefulWidget {
  const Expsenses({super.key});

  @override
  State<Expsenses> createState() => _ExpsensesState();
}

class _ExpsensesState extends State<Expsenses> {
  void _openAddExpenseView() {
    showModalBottomSheet(
        context: context, builder: (context) => const AddNewExpense());
  }

  final List<Expense> expenses = [
    Expense(
        titile: "Flutter Course",
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        titile: "Movie",
        amount: 25.50,
        date: DateTime.now(),
        category: Category.leisure),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EXPENSE TRACKER',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff7680AA),
        actions: [
          IconButton(
            onPressed: _openAddExpenseView,
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Expense chart"),
            Expanded(child: ExpensesList(expenses: expenses))
          ],
        ),
      ),
    );
  }
}
