import 'package:untitled3/controller/DBController.dart';
import 'package:untitled3/model/ScheduleModel.dart';

class ScheduleController {
  static Future<List<Schedule>?> getSchedules() async {
    String? schedules = await DBController.getSchedules();
    if (schedules == null)
      return null;
    else {
      List<Schedule> results = Schedule.decode(schedules);
      return results;
    }
  }
}
