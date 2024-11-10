import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_rpg/models/character.dart';

class FirestoreService {
  static final ref = FirebaseFirestore.instance
      .collection('characters')
      .withConverter(
          fromFirestore: Character.fromFireStore,
          toFirestore: (Character character, _) => character.toFirestore()
      );
      
  // add a new character
  static Future<void> addCharacter(Character character) async {
    await ref.doc(character.id).set(character);
  }

  // get characters once
  static Future<QuerySnapshot<Character>> getCharaterOnce() async {
    return ref.get();
  }

  // update a character

  // delete a character

}
