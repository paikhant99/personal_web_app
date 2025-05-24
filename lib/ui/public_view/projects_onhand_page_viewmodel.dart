import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:my_portfolios/models/network_models.dart';
import 'package:my_portfolios/repositories/projects_repo.dart';

class ProjectsOnhandPageViewmodel extends ChangeNotifier {
  final List<Repository> _repos = [];
  final ProjectsOnhandRepository _repo;

  UnmodifiableListView<Repository> get repos => UnmodifiableListView(_repos);
  Exception? exception;

  ProjectsOnhandPageViewmodel.namedPrivate(
      {required ProjectsOnhandRepository projectsRepo})
      : _repo = projectsRepo;

  void loadProjectsOnhand() async {
    var result = await _repo.getAllProjectsOnhand();
    result.when((repos) {
      _repos.clear();
      _repos.addAll(repos);
      exception = null;
    }, (error) {
      _repos.clear();
      exception = error;
    });
    notifyListeners();
  }
}
