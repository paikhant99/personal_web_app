import 'package:multiple_result/multiple_result.dart';
import 'package:my_portfolios/data/firebase_service.dart';
import 'package:my_portfolios/models/network_models.dart';

abstract class ProjectsOnhandRepository {
  Future<Result<List<Repository>, Exception>> getAllProjectsOnhand();
}

class ProjectsOnhandRepositoryImpl extends ProjectsOnhandRepository {
  final FirestoreService _service;

  ProjectsOnhandRepositoryImpl.namedPrivate(
      {required FirestoreService firestoreService})
      : _service = firestoreService;

  @override
  Future<Result<List<Repository>, Exception>> getAllProjectsOnhand() async {
    try {
      var allProjects = await _service.allProjectsOnhand();
      return Success(allProjects.docs
          .map((doc) => Repository.fromJson(doc.data()))
          .toList());
    } catch (error) {
      return Error(error as Exception);
    }
  }
}
