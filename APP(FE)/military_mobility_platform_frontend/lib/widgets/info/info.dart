import 'package:flutter/material.dart';
import 'package:military_mobility_platform_frontend/provider/appbar.dart';
import 'package:provider/provider.dart';

class InfoTab extends StatelessWidget {
  const InfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AppBarProvider>(context, listen: false).setTitle('내 정보');
    });
    return const Center(child: Text('info'));
  }
}
