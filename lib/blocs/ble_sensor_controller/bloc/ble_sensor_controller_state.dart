part of 'ble_sensor_controller_bloc.dart';

abstract class BleSensorControllerState extends Equatable {
  late String? data;
  BleSensorControllerState({this.data});

  @override
  List<Object> get props => [];
}

class BleSensorControllerInitial extends BleSensorControllerState {}

class BleSensorControllerValidState extends BleSensorControllerState {
  final HexoState hexoState;

  BleSensorControllerValidState(this.hexoState) : super(data: null);

  @override
  List<Object> get props => [hexoState];
}

class BleSensorControllerInValidState extends BleSensorControllerState {
  final SensorType sensorTypeLocation;
  final String mess;

  BleSensorControllerInValidState(this.sensorTypeLocation, this.mess)
      : super(data: null);

  @override
  List<Object> get props => [sensorTypeLocation, mess];
}
