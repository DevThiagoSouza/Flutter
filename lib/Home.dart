import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _emailUsuario = "";

  Future _recuperaraDados() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      print(auth.currentUser.uid);
    }

    setState(() {
      var usuarioLogado;
      _emailUsuario = usuarioLogado.email;
    });
  }

  @override
  void initState() {
    _recuperaraDados();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ZapZap")),
      body: Container(
        child: Text(_emailUsuario),
      ),
    );
  }
}
