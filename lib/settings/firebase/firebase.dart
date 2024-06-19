import 'package:crypto_analyst/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';


void initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}