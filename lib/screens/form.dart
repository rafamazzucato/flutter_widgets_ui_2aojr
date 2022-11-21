import 'package:flutter/material.dart';

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
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Nome da linguagem",
                  labelText: "Nome da linguagem",
                ),
                controller: _nameController,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Insira o nome da linguagem';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Detalhe da linguagem",
                  labelText: "Detalhe da linguagem",
                ),
                controller: _detailController,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Insira o detalhe da linguagem';
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  child: Text("Gravar"),
                  onPressed: () {
                    
                  }))
            ]),
        ),
      ),
    );
  }
}