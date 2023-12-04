import 'package:flutter_bloc/flutter_bloc.dart';

part 'To_do_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]) {}

  void addTodo(String title) {
    final todo = Todo(title, DateTime.now());

    // state.add(todo);
    print(DateTime.now());
    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    // TODO: implement onChange
    print(change);
    super.onChange(change);
  }
}
