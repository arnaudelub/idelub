import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class ProjectEntity extends Equatable {
  const ProjectEntity(this.id, this.description, this.web, this.github,
      this.display, this.ongoing, this.image, this.screenshots);

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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'web': web,
      'github': github,
      'display': display,
      'ongoing': ongoing,
      'image': image,
      'screenshots': screenshots
    };
  }

  @override
  List<Object?> get props =>
      [id, description, web, github, display, ongoing, image, screenshots];

  @override
  String toString() {
    return 'ProjectEntity(id: $id, description: $description, web: $web,'
        'github: $github, display: $display, ongoing: $ongoing,'
        ' image: $image, screenshots: $screenshots)';
  }

  static ProjectEntity fromJson(Map<String, dynamic> json) {
    return ProjectEntity(
        json['id'] as String,
        json['description'] as Map<String, dynamic>,
        json['web'] as String,
        json['github'] as String,
        json['display'] as bool,
        json['ongoing'] as bool,
        json['image'] as String,
        json['screenshots'] as List<String>);
  }

  static ProjectEntity fromSnapshot(DocumentSnapshot snap) {
    return ProjectEntity(
      snap.id,
      snap.data()?['description'],
      snap.data()?['web'],
      snap.data()?['github'],
      snap.data()?['display'],
      snap.data()?['ongoing'],
      snap.data()?['image'],
      snap.data()?['screenshots'],
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      'description': description,
      'web': web,
      'github': github,
      'display': display,
      'ongoing': ongoing,
      'image': image,
      'screenshots': screenshots
    };
  }
}
