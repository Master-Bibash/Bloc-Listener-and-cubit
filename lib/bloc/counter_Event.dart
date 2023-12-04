part of 'counter_bloc.dart';

sealed class CountereEent {}

class CounterIncremented extends CountereEent {}

final class CounterDecremented extends CountereEent {}
