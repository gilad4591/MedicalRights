import 'package:get_it/get_it.dart';
import 'package:medical_rights/models/Fontsize.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton(FontS());
}
