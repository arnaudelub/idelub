import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_repository/project_repository.dart';
import 'package:project_repository/src/entities/entities.dart';

class ProjectRepository implements IProjectRepository {
  ProjectRepository();

  final projectCollection = FirebaseFirestore.instance.collection('projects');

  Future<List<Project>> getProjects() async {
    final QuerySnapshot snapshot = await projectCollection.get();
    return snapshot.docs
        .map((doc) => Project.fromEntity(ProjectEntity.fromSnapshot(doc)))
        .toList();
  }
}
