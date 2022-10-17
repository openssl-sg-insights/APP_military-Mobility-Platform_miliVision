import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:military_mobility_platform_frontend/model/mobility.dart';
import 'package:military_mobility_platform_frontend/model/reservation.dart';
import 'package:military_mobility_platform_frontend/model/user.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi(baseUrl: "http://20.214.203.20:8000")
abstract class APIService {
  factory APIService(Dio dio, {String baseUrl}) = _APIService;

  @POST('/user/login')
  Future<LoginResDTO> login(@Body() LoginReqDTO dto);

  @POST('/user/register')
  Future<RegisterResDTO> register(@Body() RegisterReqDTO dto);

  @POST('/tms/get_available_car')
  Future<GetAvailableMobilitiesResDTO> getAvailableMobilities(
      @Body() GetAvailableMobilitiesReqDTO dto);

  @GET('/tms/reservation')
  Future<GetReservationsResDTO> getReservations();

  @POST('/tms/reservation')
  Future<MakeReservationResDTO> makeReservation(
      @Body() MakeReservationReqDTO dto);

  @DELETE('/tms/reservation')
  Future<void> deleteReservation(@Query('reservation_id') int reservationID);
  
  @POST('/tms/safety_checklist')
  Future<OperationDTO> confirmSafetyCheck(
      @Body() OperationDTO dto);
  
  @POST('/tms/add_operation_plan')
  Future<OperationDTO> makeOperationPlan(
      @Body() OperationDTO dto);
  
  @GET('/tms/finishing_using')
  Future<OperationDTO> returnVehicle(
      @Body() OperationDTO dto);
  
  @POST('/incident/incident')
  Future<AccidentDTO> postAccidentReport(
      @Body() AccidentDTO dto);
  
  @GET('/incident/incident')
  Future<AccidentDTO> getAccidentReport();
  
  @POST('/incident/rescue')
  Future<RecoveryTeamDTO> postRecoveryTeam(
      @Body() RecoveryTeamDTO dto);
  
  @GET('/incident/rescue')
  Future<RecoveryTeamDTO> getRecoveryTeam();

}
