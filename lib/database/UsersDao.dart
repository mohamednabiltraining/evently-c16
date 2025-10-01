import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evently_c16/database/model/AppUser.dart';

class UsersDao{
  static var _db = FirebaseFirestore.instance;

  static CollectionReference<AppUser> _getUsersCollection(){
    return _db.collection("users")
        .withConverter<AppUser>(
      // convert from map to AppUser object
       fromFirestore: (snapshot, options) {
         return AppUser.fromMap(snapshot.data());
       },
      // convert from AppUser object to Map<String,dynamic>
      toFirestore: (user, options) {
        return user.toMap();
      },
    );
  }


  static Future<void> addUser(AppUser user)async{
    // insert into database
    // var docReference = getUsersCollection()
    //     .doc();// auto generate id

    var docReference = _getUsersCollection()
        .doc(user.id);// new doc with 1234 id
    await docReference.set(user);
  }

  static Future<AppUser?> getUserById(String? uid)async{
    var doc = await _getUsersCollection()
        .doc(uid).get();
    return doc.data();
  }

}