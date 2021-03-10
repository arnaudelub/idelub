import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:project_repository/project_repository.dart';

class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}

class MockDocumentSnapshot extends Mock implements DocumentSnapshot {}

class MockQuerySnapshot extends Mock implements QuerySnapshot {}

void main() {
  MockFirebaseFirestore instance;
  MockDocumentSnapshot mockDocumentSnapshot;
  MockQuerySnapshot mockQuerySnapshot;
  setUp(() {
    instance = MockFirebaseFirestore();
    mockDocumentSnapshot = MockDocumentSnapshot();
    mockQuerySnapshot = MockQuerySnapshot();
  });

  const id = 'mock-id';
  const description = {'es': 'foo', 'en': 'bar'};
  const web = 'mock-link-web';
  const github = 'mock-link-github';
  const image = 'mock-link-image';
  const screenshots = ['mock-screenshot-link'];
  const projects = [
    Project(
        id: id,
        description: description,
        display: true,
        ongoing: false,
        web: web,
        github: github,
        image: image,
        screenshots: screenshots)
  ];
}
