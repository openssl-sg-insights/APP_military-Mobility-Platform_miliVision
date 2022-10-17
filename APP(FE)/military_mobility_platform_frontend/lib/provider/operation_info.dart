import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:military_mobility_platform_frontend/model/mobility.dart';
import 'package:military_mobility_platform_frontend/model/reservation.dart';
import 'package:military_mobility_platform_frontend/model/operation.dart';

import 'package:military_mobility_platform_frontend/service/api.dart';

class OperationInfoProvider extends ChangeNotifier {
  String _safetyCheck = "False";
  bool _safetyCheckBool = false;
  String _driverInfo = "";
  String _commanderInfo = "";
  String _operationPurpose = "";
  String _operationNote = "";
  String _vehicleReturn = "False";
  String _operationPlan = "";

  String get safetyCheck => _safetyCheck;
  String get driverInfo => _driverInfo;
  String get commanderInfo => _commanderInfo;
  String get operationPurpose => _operationPurpose;
  String get operationNote => _operationNote;
  String get vehicleReturn => _vehicleReturn;

  void safetyCheckTrue() {
    _safetyCheck = "True";
    _safetyCheckBool = true;
    notifyListeners();
  }

  void vehicleReturnTrue() {
    _vehicleReturn = "True";
    notifyListeners();
  }

  void driverInfoSet(String driverInfo) {
    _driverInfo = driverInfo;
    notifyListeners();
  }

  void commanderInfoSet(String commanderInfo) {
    _commanderInfo = commanderInfo;
    notifyListeners();
  }

  void operationPurposeSet(String operationPurpose) {
    _operationPurpose = operationPurpose;
    notifyListeners();
  }

  void operationNoteSet(String operationNote) {
    _operationNote = operationNote;
    _operationPlan = _operationNote + " " + _operationPurpose;
    notifyListeners();
  }
  
  Future<SafetyCheckDTO> confirmSafetyCheck(Dio authClient, ReservationDTO reservation) async {
    try {
      final dto = SafetyCheckDTO(
          reservation_id: reservation.id,
          safety_checklist: _safetyCheckBool);
      
      return APIService(authClient).confirmSafetyCheck(dto);
    } catch (exception) {
      return Future.error(exception.toString());
    }
  }
    
  Future<OperationPlanDTO> makeOperationPlan(Dio authClient, ReservationDTO reservation) async {
    try {
      final dto = OperationPlanDTO(
          reservation_id: reservation.id,
          operation_plan: _operationPlan);
      
      return APIService(authClient).makeOperationPlan(dto);
    } catch (exception) {
      return Future.error(exception.toString());
    }
  }
    
  Future<OperationFinishDTO> returnVehicle(Dio authClient, ReservationDTO reservation) async {
    try {
      final dto = OperationFinishDTO(
          reservation_id: reservation.id);
      
      return APIService(authClient).returnVehicle(dto);
    } catch (exception) {
      return Future.error(exception.toString());
    }
  }
}
