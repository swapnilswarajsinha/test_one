import 'package:flutter/material.dart';
import 'package:test_one/employee_model.dart';
import 'package:test_one/employee_screen.dart';

class HomeProvider with ChangeNotifier {
  String? _employee_Name;
  int? _employee_Salary;
  List<employee> employeeList = [];

  SaveData(employee employee) {
    employeeList.add(employee);

    notifyListeners();
  }
}
