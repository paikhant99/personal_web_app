import 'package:flutter/material.dart';
import 'package:my_portfolios/ui/private_view/message_box_page.dart';
import 'package:my_portfolios/ui/private_view/repositories_management_page.dart';
import 'package:my_portfolios/ui/private_view/user_preference_viewmodel.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatefulWidget {
  static const String routeName = "/dashboard";

  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedDIndex = 0;
  var selectedDs = [const MessageBoxPage(), const RepositoriesManagementPage()];

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Drawer(
        child: Column(
          children: [
            Expanded(
              child: ListTile(
                selected: _selectedDIndex == 0,
                onTap: () => _selectDestination(0),
                title: const Center(child: Text("Message Box")),
              ),
            ),
            Expanded(
              child: ListTile(
                selected: _selectedDIndex == 1,
                onTap: () => _selectDestination(1),
                title: const Center(child: Text("Repositories")),
              ),
            ),
            Expanded(
              child: ListTile(
                onTap: () async {
                  var result = await Provider.of<UserPreferenceViewmodel>(
                          context,
                          listen: false)
                      .signOut();
                  result.when((successResult) {
                    Navigator.pop(context);
                  }, (errorResult) {
                    print(errorResult);
                  });
                },
                title: const Center(child: Text("Sign Out")),
              ),
            )
          ],
        ),
      ),
      const VerticalDivider(
        width: 1,
        thickness: 1,
      ),
      Expanded(
        child: Scaffold(body: selectedDs[_selectedDIndex]),
      )
    ]);
  }

  void _selectDestination(int index) {
    setState(() {
      _selectedDIndex = index;
    });
  }
}
