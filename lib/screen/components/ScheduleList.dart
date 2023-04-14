
import 'package:flutter/material.dart';
import 'package:untitled3/provider/ScheduleProvider.dart';
import 'package:untitled3/screen/widgets/HelperWidgets.dart';
import 'package:untitled3/screen/components/ScheduleCard.dart';
import 'package:provider/provider.dart';

class ScheduleList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var scheduleProvider = Provider.of<ScheduleProvider>(context);
    return RefreshIndicator(
      onRefresh: scheduleProvider.initialize,
      child: scheduleProvider.isLoading ? Center(child: CircularProgressIndicator(),) : (scheduleProvider.schedules.isEmpty)
          ? emptyWidget(context)
          : ListView.builder(
        // padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          // shrinkWrap: false,
          itemCount: scheduleProvider.schedules.length,
          itemBuilder: (context, index) {
            return ScheduleCard(
                scheduleProvider.schedules[index], index);
          }),
    );
  }
}
