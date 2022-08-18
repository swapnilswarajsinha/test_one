import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_one/home_provider.dart';

class Employee extends StatefulWidget {
  const Employee({Key? key}) : super(key: key);

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Employee Name"),
            SizedBox(
              height: 16,
            ),
            ListView.builder(
                itemCount: provider.employeeList.length,
                shrinkWrap: true,
                itemBuilder: ((ctx, index) {
                  return Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(
                        width: 4,
                      ),
                      Text(provider.employeeList[index].employee_name
                          .toString()),
                    ],
                  );
                })),
          ],
        ),
      );
    });
  }
}
