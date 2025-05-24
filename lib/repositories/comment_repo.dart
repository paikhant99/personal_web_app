import 'package:multiple_result/multiple_result.dart';
import 'package:my_portfolios/data/firebase_service.dart';
import 'package:my_portfolios/models/network_models.dart';

abstract class CommentRepository {
  Future<Result<String, Exception>> makeNewComment(String phno, String desc);

  Future<Result<List<Comment>, Exception>> getAllComments();
}

class CommentRepositoryImpl extends CommentRepository {
  final FirestoreService _service;

  CommentRepositoryImpl.namedPrivate(
      {required FirestoreService firestoreService})
      : _service = firestoreService;

  @override
  Future<Result<String, Exception>> makeNewComment(
      String phno, String desc) async {
    try {
      if (phno.isNotEmpty && desc.isNotEmpty) {
        var newComment = await _service.newComment(phno, desc);
        return Success(newComment.id);
      }
      return Error(Exception("One of the text fields is missing"));
    } catch (error) {
      return Error(error as Exception);
    }
  }

  @override
  Future<Result<List<Comment>, Exception>> getAllComments() async {
    try {
      var commentsList = await _service.allComments();
      return commentsList.docs.isEmpty
          ? Error(Exception("empty_data"))
          : Success(commentsList.docs
              .map((doc) => Comment.fromJson(doc.data()))
              .toList());
    } catch (error) {
      return Error(error as Exception);
    }
  }
}
