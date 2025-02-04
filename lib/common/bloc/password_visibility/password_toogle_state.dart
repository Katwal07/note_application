import 'package:equatable/equatable.dart';

class ToogleState extends Equatable {
  final bool isPasswordVisible;
  const ToogleState({required this.isPasswordVisible});

  @override
  List<Object> get props => [isPasswordVisible];
}
