import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();
const uuid = Uuid();

enum Category { food, tarvel, leisure, work }

const categoryIcon = {
  Category.food: Icons.lunch_dining,
  Category.tarvel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  final String titile;
  final double amount;
  final String id;
  final DateTime date;

  final Category category;
  Expense(
      {required this.titile,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v8();

  String get formattedDate {
    return formatter.format(date);
  }
}
