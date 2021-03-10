import 'package:flutter/foundation.dart';
import 'package:project_repository/src/entities/entities.dart';

@immutable
class Project {
  /// the id of the document's project
  final String id;

  /// the descriptions of the project in [es,ca, fr, en]
  final Map<String, dynamic> description;

  /// The web url of the project
  final String? web;

  /// the github url of the project
  final String? github;

  /// flag to show or hide the project on the page
  final bool display;

  /// flag to set if the project is under development
  final bool ongoing;

  /// the thumb url of the project shown on the web page
  final String image;

  /// screenshots url of the screens
  final List<String> screenshots;

  const Project(
      {required this.id,
      required this.description,
      this.web,
      this.github,
      required this.display,
      required this.ongoing,
      required this.image,
      required this.screenshots});

  Project copyWith(
      {String? id,
      Map<String, dynamic>? description,
      String? web,
      String? github,
      bool? display,
      bool? ongoing,
      String? image,
      List<String>? screenshots}) {
    return Project(
        id: id ?? this.id,
        description: description ?? this.description,
        web: web ?? this.web,
        github: github ?? this.github,
        display: display ?? this.display,
        ongoing: ongoing ?? this.ongoing,
        image: image ?? this.image,
        screenshots: screenshots ?? this.screenshots);
  }

  @override
  int get hashCode =>
      id.hashCode ^
      description.hashCode ^
      web.hashCode ^
      github.hashCode ^
      display.hashCode ^
      ongoing.hashCode ^
      image.hashCode ^
      screenshots.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Project &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          description == other.description &&
          web == other.web &&
          github == other.github &&
          display == other.display &&
          ongoing == other.ongoing &&
          image == other.image &&
          screenshots == other.screenshots;

  @override
  String toString() {
    return 'ProjectEntity(id: $id, description: $description, web: $web,'
        'github: $github, display: $display, ongoing: $ongoing,'
        'image: $image, screenshots: $screenshots)';
  }

  ProjectEntity toEntity() {
    return ProjectEntity(
        id, description, web, github, display, ongoing, image, screenshots);
  }

  static Project fromEntity(ProjectEntity entity) {
    return Project(
        id: entity.id,
        description: entity.description,
        web: entity.web,
        github: entity.github,
        display: entity.display,
        ongoing: entity.ongoing,
        image: entity.image,
        screenshots: entity.screenshots);
  }
}
