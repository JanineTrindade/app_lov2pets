import 'package:app_lov2pets/screens/constants.dart';
import 'package:app_lov2pets/screens/utils/todo_list.dart';
import 'package:flutter/material.dart';
//import 'package:app_lov2pets/screens/utils/todo_list.dart';

  class Lista extends StatefulWidget {
  const Lista({super.key});

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  final _controller = TextEditingController();
  List toDoList = [
    ['Comprar Ração', true],
    ['Levar ao Veterinario', true],
    ['Banho e Tosa dia 27/06 - 14h', false],
    //['', false],
  ];

  void checkBoxChanged(int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void saveNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
  }

  void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      appBar: AppBar(
        title: const Text('Lista do meu Pet'),
        backgroundColor: kprimaryColor,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        padding: EdgeInsets.symmetric(vertical: 30),
        itemBuilder: (BuildContext context, index) {
          return TodoList(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(index),
            deleteFunction: (contex) => deleteTask(index),
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Adicione uma tarefa',
                    filled: true,
                    fillColor: Color.fromARGB(230, 255, 224, 224),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: kprimaryColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: kprimaryColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: saveNewTask,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

