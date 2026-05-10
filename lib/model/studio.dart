import 'package:equatable/equatable.dart';

class Studio extends Equatable {
  final String name;
  final String logo;

  const Studio({required this.name, required this.logo});

  @override
  List<Object?> get props => [name];
}
