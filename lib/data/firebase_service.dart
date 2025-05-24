import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_portfolios/models/network_models.dart';

class FirestoreService {
  final _commentsCollectionLabel = "comments";
  final _projectsCollectionLabel = "projects";

  final FirebaseFirestore _db;

  FirestoreService.namedPrivate({required FirebaseFirestore firestoreDB})
      : _db = firestoreDB;

  Future<DocumentReference<Map<String, dynamic>>> newComment(
          String phno, String comment) =>
      _db
          .collection(_commentsCollectionLabel)
          .add(Comment(ph_no: phno, description: comment).toJson());

  Future<QuerySnapshot<Map<String, dynamic>>> allComments() =>
      _db.collection(_commentsCollectionLabel).get();

  Future<QuerySnapshot<Map<String, dynamic>>> allProjectsOnhand() async =>
      _db.collection(_projectsCollectionLabel).get();
}

class FirebaseAuthentication {
  final FirebaseAuth _auth;

  FirebaseAuthentication.namedPrivate({required FirebaseAuth firebaseAuth})
      : _auth = firebaseAuth;

  Future<UserCredential?> signIn(String mail, String password) =>
      _auth.signInWithEmailAndPassword(email: mail, password: password);

  Future<void> signOut() => _auth.signOut();
}
