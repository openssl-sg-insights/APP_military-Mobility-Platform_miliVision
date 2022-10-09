import 'package:flutter/material.dart';
import 'package:military_mobility_platform_frontend/provider/reservation_list.dart';
import 'package:military_mobility_platform_frontend/service/mobility_assets.dart';
import 'package:military_mobility_platform_frontend/widgets/list/detailed_info/detailed_info_subtab.dart';
import 'package:provider/provider.dart';

class DetailedInfoTab extends StatelessWidget {
  const DetailedInfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    final requestedMobilityListProvider =
        Provider.of<ReservationListProvider>(context);
    final requestedMobility = requestedMobilityListProvider.selectedReservation;
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

  Widget _buildInfoSection(BuildContext context, int mobility) {
    final textTheme = Theme.of(context).textTheme;
    return Row(children: [
      Image(
          image: MobilityAssets.getMobilityImage('type 임시'),
          height: 110.0,
          fit: BoxFit.fitHeight),
      const Padding(padding: EdgeInsets.only(left: 24.0)),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('id 임시'),
        Text('type 임시', style: textTheme.labelMedium),
        Text("fuelType 임시|color 임시", style: textTheme.labelMedium),
        Text("연료: 88%", style: textTheme.labelMedium)
      ])
    ]);
  }
}
