import 'package:flutter/material.dart';
import 'package:my_portfolios/ui/customs/custom_widgets.dart';
import 'package:my_portfolios/ui/public_view/home_page.dart';
import 'package:my_portfolios/ui/public_view/home_screen_viewmodel.dart';
import 'package:my_portfolios/ui/public_view/projects_onhand_page.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/";

  var pageList = [const HomePage(), const ProjectsOnhandPage()];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TopNavigationAppBar(),
        body: Consumer<HomeScreenViewmodel>(
          builder: (context, homescreenVM, child) {
            return pageList[homescreenVM.pageNo];
          },
        ));
  }
}
