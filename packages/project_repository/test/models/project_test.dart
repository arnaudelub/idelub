import 'package:flutter_test/flutter_test.dart';
import 'package:project_repository/project_repository.dart';

void main() {
  group('Project', () {
    const id = 'mock-id';
    const description = {'es': 'foo', 'en': 'bar'};
    const web = 'mock-link-web';
    const github = 'mock-link-github';
    const image = 'mock-link-image';
    const screenshots = ['mock-screenshot-link'];

    test("Shouldn't throw any error when web is null", () {
      expect(
          Project(
              id: id,
              description: description,
              display: true,
              ongoing: false,
              web: null,
              github: github,
              image: image,
              screenshots: screenshots),
          Project(
              id: id,
              description: description,
              display: true,
              ongoing: false,
              web: null,
              github: github,
              image: image,
              screenshots: screenshots),
          reason: 'Should allow web to be null');
    });
    test("Shouldn't throw any error when github is null", () {
      expect(
          Project(
              id: id,
              description: description,
              display: true,
              ongoing: false,
              web: web,
              github: null,
              image: image,
              screenshots: screenshots),
          Project(
              id: id,
              description: description,
              display: true,
              ongoing: false,
              web: web,
              github: null,
              image: image,
              screenshots: screenshots),
          reason: 'Should allow github to be null');
    });
  });
}
