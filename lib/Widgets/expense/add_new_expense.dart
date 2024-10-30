import 'package:flutter/material.dart';

class AddNewExpense extends StatefulWidget {
  const AddNewExpense({super.key});

  @override
  State<AddNewExpense> createState() => _AddNewExpenseState();
}

class _AddNewExpenseState extends State<AddNewExpense> {
  final _expenseTitleController = TextEditingController();
  final _expenseAmountController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _expenseTitleController.dispose();
    _expenseAmountController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.cancel,
                    color: Colors.red,
                  ))
            ],
          ),
          TextField(
            controller: _expenseTitleController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text("Add Expense Title")),
          ),
          TextField(
            controller: _expenseAmountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text("Enter Expense Amount"),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
              onPressed: () {
                print(_expenseTitleController.text);
                print(_expenseAmountController.text);
              },
              child: const Text("SAVE EXPENSE"))
        ],
      ),
    );
  }
}
