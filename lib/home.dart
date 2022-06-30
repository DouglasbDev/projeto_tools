import 'package:flutter/material.dart';
import 'package:projeto_tools/consts/text_form_field.dart';
import 'package:projeto_tools/simple_card/simples_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(10),
          alignment: Alignment.topLeft,
          width: 300,
          height: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListTile(
                    title: Text("Tools"),
                  )),
                  Expanded(
                    child: ListTile(
                    title: Text("USUARIO"),
                  )),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
               const Align(
                alignment: Alignment.topLeft,
                child:  CustomTextField(
                    hint: 'Pesquisa',
                    prefix: Icons.search,
                ),
              ),
              const SizedBox(height: 30,),
              Center(
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Serviços",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SimpleCard()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
