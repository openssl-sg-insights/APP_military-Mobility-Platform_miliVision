import 'package:flutter/material.dart';
import 'package:military_mobility_platform_frontend/model/mobility.dart';
import 'package:military_mobility_platform_frontend/provider/mobility_list.dart';
import 'package:military_mobility_platform_frontend/widgets/list/detailed_info/detailed_info_subtab.dart';
import 'package:provider/provider.dart';

class DetailedInfoTab extends StatelessWidget {
  const DetailedInfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    final requestedMobilityListProvider =
        Provider.of<RequestedMobilityListProvider>(context);
    final requestedMobility = requestedMobilityListProvider.selectedMobility;
    if (requestedMobility == null) {
      return Container();
    }
    return Column(children: [
      Padding(
          padding: const EdgeInsets.all(36.0),
          child: _buildInfoSection(context, requestedMobility.mobility)),
      DetailedInfoSubTab(requestedMobility)
    ]);
  }

  Widget _buildInfoSection(BuildContext context, MobilityDTO mobility) {
    final textTheme = Theme.of(context).textTheme;
    return Row(children: [
      const Image(
          image: AssetImage('assets/images/blank.jpg'),
          height: 110.0,
          fit: BoxFit.fitHeight),
      const Padding(padding: EdgeInsets.only(left: 24.0)),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(mobility.id),
        Text(mobility.type, style: textTheme.labelMedium),
        Text("${mobility.fuelType}|${mobility.color}",
            style: textTheme.labelMedium),
        Text("연료: 88%", style: textTheme.labelMedium)
      ])
    ]);
  }
}
