
import 'package:cloud_firestore/cloud_firestore.dart';

class User{
  final String email;
  final String uid;
  final String photourl;
  final String username;
  final String bio;
  final List following;
  final List followers;

  const User({
    required this.email,
    required this.uid,
    required this.photourl,
    required this.username,
    required this.bio,
    required this.followers,
    required this.following,
});
  Map<String, dynamic> toJson() =>{
    'username': username,
    'uid': uid,
    'email': email,
    'bio': bio,
    'followers': followers,
    'following': following,
    'photourl': photourl,
  };

  static User fromSnap(DocumentSnapshot snap){
    var snapshot = snap.data() as Map<String,dynamic>;

    return User(
      username: snapshot['username'],
      uid: snapshot['uid'],
      bio: snapshot[''],
      photourl:  snapshot['photourl'],
      followers:  snapshot['followers'],
      following:  snapshot['following'],
      email:  snapshot['email'],
    );
  }
}