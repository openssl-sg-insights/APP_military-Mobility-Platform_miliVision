import 'package:json_annotation/json_annotation.dart';

part 'recovery_team.g.dart';

@JsonSerializable()
class RecoveryTeamDTO {
    const RecoveryTeamDTO(
        {required this.car,
         required this.location,
         required this.servide_needs,
         required this.note});
    
    final int car;
    final String location;
    final String servide_needs;
    final String note;

  
  factory RecoveryTeamDTO.fromJson(Map<String, dynamic> json) =>
      _$RecoveryTeamDTOFromJson(json);
  Map<String, dynamic> toJson() => _$RecoveryTeamDTOToJson(this);
}
