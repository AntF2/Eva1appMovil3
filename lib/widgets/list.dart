import 'package:flutter/material.dart';

class MiList extends StatefulWidget {
  const MiList({super.key});

  @override
  MiListState createState() => MiListState(); 
}

class MiListState extends State<MiList> {
  List<Map<String, dynamic>> tareas = [
    {"titulo": "Taller 1: Desarrollo de Aplicacion Movil de grid", "completada": false},
    {"titulo": "Actividad Contacto al docente: Realizar los ejercicios", "completada": false},
    {"titulo": "Evaluacion 1: Realizar un list de tareas", "completada": false},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tareas.length,
      itemBuilder: (context, index) {
        return Card(
          color: tareas[index]["completada"] ? Colors.green[100] : null,
          child: ListTile(
            title: Text(tareas[index]["titulo"]),
            trailing: Checkbox(
              value: tareas[index]["completada"],
              onChanged: (bool? value) {
                setState(() {
                  tareas[index]["completada"] = value!;
                });
              },
            ),
          ),
        );
      },
    );
  }
}
