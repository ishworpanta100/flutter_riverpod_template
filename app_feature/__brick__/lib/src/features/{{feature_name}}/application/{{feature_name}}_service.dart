import '../domain/{{feature_name}}_model.dart';

abstract class I{{feature_name.pascalCase()}}Service {
  Future<{{feature_name.pascalCase()}}Model> get{{feature_name.pascalCase()}}Data();
} 
