import 'package:device_calendar/device_calendar.dart' as device_calendar;
import 'package:device_calendar/device_calendar.dart';
import 'package:timezone/timezone.dart' as tz;

class Event {
  final String title;
  final DateTime startTime;
  final DateTime endTime;
  final String location;
  final String description;

  Event({
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.location,
    required this.description,
  });
}

class CalendarServiceForIos {
  final DeviceCalendarPlugin _deviceCalendarPlugin = DeviceCalendarPlugin();
  List<Calendar> _calendars = [];

  Future<bool> requestPermissions() async {
    var permissionsGranted = await _deviceCalendarPlugin.hasPermissions();
    if (permissionsGranted.isSuccess != true ||
        permissionsGranted.data != true) {
      permissionsGranted = await _deviceCalendarPlugin.requestPermissions();
      return permissionsGranted.isSuccess == true &&
          permissionsGranted.data == true;
    }
    return true;
  }

  Future<void> retrieveCalendars() async {
    var permissionsGranted = await requestPermissions();
    if (permissionsGranted) {
      var calendarsResult = await _deviceCalendarPlugin.retrieveCalendars();
      _calendars = calendarsResult.data ?? [];
    }
  }

  Future<bool?> addAppleCalendarEvent({
    required String title,
    required String description,
    required DateTime start,
    required DateTime end,
  }) async {
    var permissionsGranted = await requestPermissions();
    if (permissionsGranted) {
      await retrieveCalendars();

      if (_calendars.isEmpty) {
        return false; // No calendar found
      }
      Calendar calendar = _calendars.first;

      // Convert DateTime to TZDateTime
      var tzStart = tz.TZDateTime.from(start, tz.local);
      var tzEnd = tz.TZDateTime.from(end, tz.local);

      // Create the event with TZDateTime
      var event = device_calendar.Event(
        calendar.id,
        title: title,
        description: description,
        start: tzStart,
        end: tzEnd,
        location: "Event Location",
      );

      var createEventResult =
          await _deviceCalendarPlugin.createOrUpdateEvent(event);
      return createEventResult?.isSuccess;
    }
    return false;
  }
}
