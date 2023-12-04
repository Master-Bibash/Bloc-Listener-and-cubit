import 'package:flutter/material.dart';
import 'package:flutter_application_4/bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class countSecondScreen extends StatelessWidget {
  // final counterBloc = BlocProvider.of<CounterBloc>(context);
  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Column(
        children: [
          //  Column(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       FloatingActionButton(
          //         child: Icon((Icons.add)),
          //         onPressed: () {

          //         },
          //       ),
          //       FloatingActionButton(
          //         child: Icon((Icons.remove)),
          //         onPressed: () {

          //         },
          //       ),
          //     ],
          //   ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            child: Icon((Icons.add)),
            onPressed: () {
              counterBloc.add(CounterIncremented());
            },
          ),
          FloatingActionButton(
            heroTag: null,
            child: Icon((Icons.remove)),
            onPressed: () {
              counterBloc.add(CounterDecremented());
              // counter.Decrement();
            },
          ),
        ],
      ),
    );
  }
}
