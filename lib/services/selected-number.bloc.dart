import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/subjects.dart';

class SelectedNumberBloc extends BlocBase {
  final selectedNumberController = BehaviorSubject<String>.seeded('0');

  Stream<String> get output => selectedNumberController.stream;

  Sink<String> get input => selectedNumberController.sink;

  String get currentValue => selectedNumberController.value;

  @override
  void dispose() {
    selectedNumberController.close();
    super.dispose();
  }
}
