import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widgets_ui/models/language.dart';

class PrincipalScreenWidget extends StatefulWidget {
  const PrincipalScreenWidget({super.key});

  @override
  State<PrincipalScreenWidget> createState() => _PrincipalScreenWidgetState();
}

class _PrincipalScreenWidgetState extends State<PrincipalScreenWidget> {
  List<Language> languages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Minhas linguagens"),
        actions: [
          IconButton(onPressed: _goToForm, icon: const Icon(Icons.add))
        ]),
      body: Column(children: [
        Center(
            child: Wrap(
          spacing: 10,
          children: _builChips(),
        )),
        Expanded(child: ListView(children: _buildListItems()))
      ]),
    );
  }

  List<ChoiceChip> _builChips() {
    return languages
        .map((language) => ChoiceChip(
            label: Text(language.name),
            selected: language.selected,
            onSelected: (value) {
              setState(() {
                language.selected = value;
              });
            }))
        .toList();
  }

  List<Widget> _buildListItems() {
    return languages.where((language) => language.selected).map((language) {
      final Widget svg = SvgPicture.asset(language.asset, semanticsLabel: language.name, width: 24,height: 24);
      return Card(
          child: ListTile(
        leading: svg,
        title: Text(language.name),
        subtitle: Text(language.description),
      ));
    }).toList();
  }

  void _goToForm(){
      Navigator.pushNamed(context, "/add");
  }
}
