import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class Secrets {
  String get firebaseApiKey;
}

void startApp(Secrets secrets) {
  runApp(MyApp(secrets: secrets));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, this.secrets}) : super(key: key);

  final Secrets secrets;
  @override
  Widget build(BuildContext context) {
    return Provider<Secrets>.value(value: secrets, child: Text("JEJE"));
  }
}
