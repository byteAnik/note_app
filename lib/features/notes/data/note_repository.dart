import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:note_app/features/notes/data/note_model.dart';

class NoteRepository {
  NoteRepository._();

  static final NoteRepository instance = NoteRepository._();

  CollectionReference<Map<String, dynamic>> get _notesCollection =>
      FirebaseFirestore.instance.collection('notes');

  Stream<List<NoteModel>> watchNotes() {
    if (Firebase.apps.isEmpty) {
      return Stream.error(
        'Firebase is not configured yet. Run flutterfire configure first.',
      );
    }

    return _notesCollection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs.map(NoteModel.fromFirestore).toList());
  }

  Future<void> addNote({
    required String title,
    required String description,
  }) async {
    if (Firebase.apps.isEmpty) {
      throw Exception(
        'Firebase is not configured yet. Run flutterfire configure first.',
      );
    }

    final note = NoteModel(
      id: '',
      title: title.trim(),
      description: description.trim(),
      createdAt: DateTime.now(),
    );

    await _notesCollection.add(note.toFirestore());
  }
}
