import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/Todo/To-Do_Add_Item.dart';
import 'package:flutter_application_4/Todo/models/To_do_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToDoHomeScreen extends StatelessWidget {
  const ToDoHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do-App'),
        centerTitle: true,
      ),
      body: BlocBuilder<TodoCubit, List<Todo>>(
        builder: (context, todos) {
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return ListTile(
                title: Text(todo.name),
                subtitle: Text(todo.dateTime.toString()),
              );
            },
          );
        },
      ),
      floatingActionButton: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => To_do_Add_Item_screen(),
                ));
          },
          icon: Icon(Icons.add)),
    );
  }
}
