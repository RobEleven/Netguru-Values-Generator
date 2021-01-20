import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:provider/provider.dart';

import 'package:recruitmenttask/components/task_tile.dart';
import 'package:recruitmenttask/components/netguru_values.dart';

class ValuesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NetguruValues>(
      builder: (context, valueInfo, child) {
        return ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final valueToTaskTile = valueInfo.ourValues[index];
            return TaskTile(
              valueName: valueToTaskTile.statement,
            );
          },
          itemCount: valueInfo.valueCount,
        );
      },
    );
  }
}
