
import 'package:flutter/material.dart';
import "package:http/http.dart"; as http;

class CadastroConta extends StatefulWidget {
  const CadastroConta({super.key});
   
   TextEditingController nomeControler =TextEditingController();
   TextEditingController cpfControler =TextEditingController();
   TextEditingController emailControler =TextEditingController();
   TextEditingController senhaControler =TextEditingController();
   TextEditingController telefoneControler =TextEditingController();

  @overrideTextEditingController nomeControler =TextEditingController();


  State<CadastroConta> createState() => _CadastroContaState();
}


class _CadastroContaState extends State<CadastroConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [TextField(decoration: InputDecoration(hintText: ),
    ),],))

    ElevatedButton(
      onPressed: () async {
        await http
        .post(
          Uri.parse("http://10.38.0.78:8001/api/usuarios"),
           headers {"
             Accept":"application/json",
            "Content-Type":"Aplication/json"}),

               body: jsonEncode({

               "nome":nomeControler.text,
               "cpf":,cpfControler.text,
               "email":emailControler.text,
               "senha":senhaControler.text,
               "telefone":telefoneControler.text
}
         ),

        })).then((http.Response response){});
      },


    )
  }
}

