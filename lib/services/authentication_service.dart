import 'package:firebase_auth/firebase_auth.dart';
import 'package:learn_me_game/screen/sign_in.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;
  AuthenticationService(this._firebaseAuth)
  Stream<user?> get authStateChanges => _firebaseAuth.idTokenChanges();

Future<String?> signUp(
  {
   required String email, required String password}) async{
     try{
      await _firebaseAuth.createUserWithEmailAndPassword(
          email:email,password:password);
      return "sign up";
    } on FirebaseAuthException catch(e) {
      if(e.code =='weak-password'){
         print(e.message);
         return e.message;
      } else if (e.code =='email-already-in-use'){
        print(e.message);
        return e.message;
     } else{
       print(e.message);
       return e.message;
    }
   }
  }


Future<String?> SignIn(
  {required String email, required String password}) async {
  try{
   await _firebaseAuth.signInWithEmailAndPassword(
       email:email,password:password);
    return "signed In";
    } on FirebaseAuthException catch(e) {
         print(e.message);
         return e.message;
      }
  }

Future<void> signOut() async{
  await _firebaseAuth.signOut();
}

}


