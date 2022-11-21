import 'package:flutter/material.dart';
import 'package:flutter_widgets_ui/components/input.dart';

class FormLanguageWidget extends StatelessWidget {
  FormLanguageWidget({super.key});

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _detailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nova linguagem")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputForm(
                hintText: "Nome da linguagem",
                labelText: "Nome da linguagem",
                controller: _nameController,
                validationMsg: 'Insira o nome da linguagem'
              ),
              InputForm(
                hintText: "Detalhe da linguagem",
                labelText: "Detalhe da linguagem",
                controller: _detailController,
                validationMsg: 'Insira o detalhe da linguagem'
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  child: const Text("Gravar"),
                  onPressed: () {
                  }))
            ]),
        ),
      ),
    );
  }
}