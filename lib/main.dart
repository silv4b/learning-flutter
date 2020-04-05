import 'package:flutter/material.dart';

import 'models/item.dart';

void main() => runApp(App());

class App extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Todo App',
			debugShowCheckedModeBanner: false,
			theme: ThemeData(primarySwatch: Colors.red),
			home: HomePage(),
		);
	}
}

//Sempre que seguir um padrão de pagina, usa-se o Scaffold (que se comporta como uma página) no return

@immutable
class HomePage extends StatefulWidget {
  var items = new List<Item>();

  HomePage(){
    items = [];
    items.add(Item(title: "Caminhada", done: true));
    items.add(Item(title: "Compras", done: false));
    items.add(Item(title: "Jogatina", done: true));
    items.add(Item(title: "Dormida", done: true));
    items.add(Item(title: "Almoço", done: true));
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Todo List")
			),
			body: ListView.builder(
        itemCount: widget.items.length, //TAMANHO DA LISTA CRIADA NA CLASSE PAI
        itemBuilder: (BuildContext ctxt, int index){
          return Text(widget.items[index].title);
        },
      ),
		);
	}
}

