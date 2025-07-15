import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CadastroConta extends StatefulWidget {
  const CadastroConta({super.key});

  @override
  State<CadastroConta> createState() => _CadastroContaState();
}

class _CadastroContaState extends State<CadastroConta> {
  TextEditingController nomeControler = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  TextEditingController senhaControler = TextEditingController();
  TextEditingController telefoneControler = TextEditingController();
  TextEditingController cpfControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: nomeControler,
            decoration: InputDecoration(hintText: "Nome "),
          ),
          TextField(
            controller: emailControler,
            decoration: InputDecoration(hintText: "Email"),
          ),
          TextField(
            controller: senhaControler,
            decoration: InputDecoration(hintText: "Senha"),
          ),
          TextField(
            controller: telefoneControler,
            decoration: InputDecoration(hintText: "Telefone"),
          ),
          TextField(
            controller: cpfControler,
            decoration: InputDecoration(hintText: "Cpf"),
          ),
          ElevatedButton(
            onPressed: () async {
              await http
                  .post(
                    Uri.parse("http://10.38.0.133:8000/api/usuarios"),
                    headers: {
                      "Accept": "application/json",
                      "Content-Type": "application/json",
                    },
                    body: jsonEncode({
                      "nome": nomeControler.text,
                      "cpf": cpfControler.text,
                      "email": emailControler.text,
                      "senha": senhaControler.text,
                      "telefone": telefoneControler.text,
                    }),
                  )
                  .then((http.Response response) {});
            },
            child: Text("Cadastrar"),
          ),
        ],
      ),
    );
  }
}
