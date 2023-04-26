import 'package:firebase_auth/firebase_auth.dart';

class EmailAuth {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> createUserWithEmailAndPassword({
    required String email,
    required String password
  }) async {
    try{
      final userCrential = 
      await _auth.createUserWithEmailAndPassword(email: 'isctorres@gmail.com', password: '12345');
      userCrential.user!.sendEmailVerification();
      return true;
    } catch(e){
      return false;
    }
  }
}