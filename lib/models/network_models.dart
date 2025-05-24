import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_models.freezed.dart';

part 'network_models.g.dart';

@unfreezed
class Comment with _$Comment{
  factory Comment({
    required String ph_no,
    required String description 
  }) = _Comment;

  factory Comment.fromJson(Map<String, Object?> json)
      => _$CommentFromJson(json);
}

@unfreezed
class Repository with _$Repository{
  factory Repository({
    required String templateImageUrl,
    required String repositoryTitle,
    required List<String> writtenLangs,
    required List<String> platforms,
    required TypeOfUrl appUrlType,
    required String appUrl
  }) = _Repository;

  factory Repository.fromJson(Map<String, Object?> json) => _$RepositoryFromJson(json);
}

enum TypeOfUrl{
  @JsonValue("view")
  View,
  @JsonValue("download")
  Download,
  @JsonValue("progress")
  Progress;

  String get jsonValue {
    switch (this) {
      case TypeOfUrl.View:
        return "view";
      case TypeOfUrl.Download:
        return "download";
      case TypeOfUrl.Progress:
        return "progress";
    }
  }

}