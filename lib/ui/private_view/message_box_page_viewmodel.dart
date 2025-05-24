import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:my_portfolios/models/network_models.dart';
import 'package:my_portfolios/repositories/comment_repo.dart';

class MessageBoxPageViewmodel extends ChangeNotifier {
  final CommentRepository _repo;
  Exception? exception;

  final List<Comment> _comments = [];

  UnmodifiableListView<Comment> get comments => UnmodifiableListView(_comments);

  MessageBoxPageViewmodel.namedPrivate({required CommentRepository commentRepo})
      : _repo = commentRepo;

  void getAllComments() async {
    var result = await _repo.getAllComments();
    result.when((comments) {
      debugPrint(comments.length.toString());
      _comments.clear();
      _comments.addAll(comments);
      exception = null;
    }, (error) {
      debugPrint(error.toString());
      _comments.clear();
      exception = error;
    });
    notifyListeners();
  }
}
