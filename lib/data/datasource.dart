import 'package:clone_threads/data/data.dart';
import 'package:clone_threads/data/thread.dart';

abstract class Ithread {
  List<thread> getThread();
}

class threadRemoteDataSource extends Ithread {
  @override
  List<thread> getThread() {
    return listThread()
        .map((jsonObject) => thread.formJson(jsonObject))
        .toList();
  }
}
