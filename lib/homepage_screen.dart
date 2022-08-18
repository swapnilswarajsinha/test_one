import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_one/employee_detail_screen.dart';
import 'package:test_one/employee_screen.dart';
import 'package:test_one/home_provider.dart';
import 'package:test_one/homepage_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeProvider>(
      create: (context) => HomeProvider(),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Step Change"),
              centerTitle: true,
              bottom: const TabBar(
                tabs: [
                  Tab(
                    text: "Employee Add",
                  ),
                  Tab(
                    text: "Employee Screen",
                  ),
                  Tab(
                    text: "Employee Details",
                  ),
                ],
              ),
            ),
            body: TabBarView(
                children: [HomePageBody(), Employee(), EmplyeeDetails()])),
      ),
    );
  }
}
