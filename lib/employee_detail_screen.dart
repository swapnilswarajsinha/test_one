import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_one/employee_model.dart';
import 'package:test_one/home_provider.dart';

class EmplyeeDetails extends StatefulWidget {
  const EmplyeeDetails({Key? key}) : super(key: key);

  @override
  State<EmplyeeDetails> createState() => _EmplyeeDetailsState();
}

class _EmplyeeDetailsState extends State<EmplyeeDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Employee Name"), Text("Emplyee Salary")],
          ),
          Consumer<HomeProvider>(builder: (context, provider, child) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: provider.employeeList.length,
                itemBuilder: ((context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(provider.employeeList[index].employee_name
                          .toString()),
                      Text(provider.employeeList[index].employee_salary
                          .toString()),
                    ],
                  );
                }));
          })
        ],
      ),
    );
  }
}
