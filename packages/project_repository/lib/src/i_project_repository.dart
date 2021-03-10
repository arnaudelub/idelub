import 'package:project_repository/project_repository.dart';

abstract class IProjectRepository {
  Future<List<Project>> getProjects();
}
