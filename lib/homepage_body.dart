import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_one/employee_model.dart';
import 'package:test_one/employee_screen.dart';
import 'package:test_one/home_provider.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  TextEditingController _employee_name = TextEditingController();
  TextEditingController _employee_salary = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<HomeProvider>(builder: (context, provider, child) {
        return Column(
          children: [
            TextFormField(
              controller: _employee_name,
              autofillHints: [AutofillHints.name],
            ),
            TextFormField(
              controller: _employee_salary,
              autofillHints: [AutofillHints.transactionAmount],
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  employee Employee = employee(
                      employee_name: _employee_name.text,
                      employee_salary: _employee_salary.text);
                  _employee_name.clear();
                  _employee_salary.clear();

                  provider.SaveData(Employee);
                },
                child: Text("Add Employee")),
          ],
        );
      }),
    ));
  }
}
