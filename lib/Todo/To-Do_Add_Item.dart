import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/Todo/models/To_do_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class To_do_Add_Item_screen extends StatelessWidget {
  const To_do_Add_Item_screen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Add an Items"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          TextField(
            controller: textEditingController,
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                // BlocProvider.of<TodoCubit>(context).addTodo(textEditingController.text);
                context.read<TodoCubit>().addTodo(textEditingController.text);
                Navigator.of(context).pop();
              },
              child: Text("Add Data"))
        ],
      ),
    );
  }
}
