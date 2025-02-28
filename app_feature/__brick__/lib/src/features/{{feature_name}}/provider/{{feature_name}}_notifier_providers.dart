import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../controller/{{feature_name}}_controller_barrel.dart';

final {{feature_name.camelCase()}}NotifierProvider =
    StateNotifierProvider<{{feature_name.pascalCase()}}Notifier, {{feature_name.pascalCase()}}State>(
  (ref) => {{feature_name.pascalCase()}}Notifier(),
);

