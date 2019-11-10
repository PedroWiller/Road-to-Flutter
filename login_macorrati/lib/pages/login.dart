import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final usuario = TextEditingController();
  final password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Acesso"),
        ),
        body: _body(context));
  }

  _body(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: <Widget>[
            _textFormField(
              "Usuário",
              "Digite seu e-mail",
              controller: usuario,
              validator: _validaLogin,
            ),
            _textFormField(
              "Senha",
              "Digite sua senha",
              controller: password,
              senha: true,
              validator: _validaSenha,
            ),
            _raisedButton("Login", Colors.blue, context)
          ],
        ),
      ),
    );
  }

  _textFormField(String label, String hint,
      {bool senha = false,
      TextEditingController controller,
      FormFieldValidator<String> validator}) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: senha,
      decoration: InputDecoration(labelText: label, hintText: hint),
    );
  }

  String _validaLogin(String texto) {
    if (texto.isEmpty) return "Digite seu e-mail";

    return null;
  }

  String _validaSenha(String texto) {
    if (texto.isEmpty) return "Digite sua senha";

    return null;
  }

  _raisedButton(String texto, Color cor, BuildContext context) {
    return RaisedButton(
      color: cor,
      child: Text(
        texto,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      onPressed: () {
        _clickButton(context);
      },
    );
  }

  void _clickButton(BuildContext context) {
    bool formOk = formKey.currentState.validate();

    if (!formOk) return;

    String login = usuario.text;
    String senha = password.text;

    print("login: $login senha $senha");
  }
}
