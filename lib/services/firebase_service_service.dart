import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseServiceService {
  final f = FirebaseFirestore.instance.collection('games');
  final j = 'name';

  Future<void> createDocument(String userid) async {
    final unique = DateTime.now().toString();
    return f.doc(unique).set({
      'iswaiting': true,
      'joinedplayers': {'playerone': userid}
    });
  }

  Stream<Iterable<Iterable<MapEntry<String, dynamic>>>> allGames() =>
      f.snapshots().map((event) => event.docs.map((e) => e.data().entries.where(
          (element) => element.key == 'iswaiting' && element.value == true)));

  Future<void> addPlayer(String docid, userid) async {
    f.doc(docid).update({
      'joinedplayer': {'playertwo': userid}
    });
  }
}
