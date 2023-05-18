import 'package:flutter/material.dart';

class Listview2 extends StatelessWidget {
  var games = ["Pou", "Fornite", "Pacman", "Mortal Kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('title'),
        ),
        body: ListView.separated(
          //obtener el tamano de mi lista
          itemCount: games.length,
          //creamnos ek contructor de vada elemento de la lista
          itemBuilder: (context, index) => ListTile(
            //asignamos el titulo apartir de la lista
            title: Text(games[index]),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
            onTap: () {
              var seleccion = games[index];
              print(seleccion);
            },
          ),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
